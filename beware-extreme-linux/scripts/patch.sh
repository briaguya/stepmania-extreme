#!/bin/sh

. scripts/settings.sh

DONEFILE=$BUILDDIR/patches.done


patch -v > /dev/null 2>&1 || { echo >&2 "patch not found, please install patch"; exit 1; }

if [ -e $DONEFILE ]
then
	echo $DONEFILE exists, not patching again
	exit
fi

echo patching things

cd $LUADIR
patch -p0 < ${PATCHDIR}/lua-config.diff

#start with ffmpeg 0.4.9pre1 (from svn)

cd ${BUILDDIR}/ffmpeg-0.4.9pre1

#fix source code problems that cause compiler errors
patch -p0 < ${PATCHDIR}/ffmpeg-0.4.9-beware.diff

#the lrintf detection does not work and causes a duplicate definition error
#but it seems it's always defined in math when needed anyway
patch -p0 < ${PATCHDIR}/ffmpeg-lrintf.diff

#start with stepmania from github

cd ${BUILDDIR}/stepmania-3.9

#reverse commit c5c1b035a69fdbc56bf589cc83b50d1fccceb1e2
#it causes ./configure to fail with lua errors, even though the compile works otherwise
patch -p1 -R < ${PATCHDIR}/stepmania-lua-config.diff

#the latest movietexture code was changed to work with a newer ffmpeg.
#but i couldn't get it to work. i could get the older code to work, with ffmpeg 0.4.9
#so i do that. the older file is still in there, use it
mv src/arch/MovieTexture/.#MovieTexture_FFMpeg.cpp.1.57.2.3 src/arch/MovieTexture/MovieTexture_FFMpeg.cpp


#since libpng-1.5.0, implementation of png_struct is moved to a private header file, and one must use png_ functions to access members
patch -p0 < ${PATCHDIR}/load-png-functions.diff

#fix a compiler error
patch -p0 < ${PATCHDIR}/RageUtil_CircularBuffer.diff
patch -p0 < ${PATCHDIR}/iterhash.diff

#automake 1.13 requires this
patch -p0 < ${PATCHDIR}/automake113.diff

cd src

#apply the beware extreme patches. if you omit this, you build plain stepmania 3.9
for f in ${PATCHDIR}/bewareex/*.diff; do patch -p0 -f < $f; done;

cd ..

cd ${BUILDDIR}

echo "done" > ${DONEFILE}

exit 0
