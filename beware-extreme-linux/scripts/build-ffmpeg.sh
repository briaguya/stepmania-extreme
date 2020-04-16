#!/bin/sh

. scripts/settings.sh

rm -rf ${FFDIR}

cd ${BUILDDIR}/ffmpeg-0.4.9pre1

#ffmpeg needs -fPIC on x86-64:
if [ $(uname -m) = "x86_64" ];then
        EXTRA_CFLAGS="--extra-cflags=-fPIC"
else
        EXTRA_CFLAGS=""
fi

#configure. omit some things that cause compiler errors
./configure --enable-shared --prefix=$LIBDIR --disable-mmx --disable-ffserver --disable-ffplay --disable-v4l --disable-vhook $EXTRA_CFLAGS || exit $?

make ${MAKEPARAMS} || exit $?

make install

cd ${BUILDDIR}

