#!/bin/sh

. scripts/settings.sh


cd ${BUILDDIR}/stepmania-3.9

automake --add-missing

./autogen.sh || exit $?

./configure --without-mp3 FFMPEG_LIBS="${LIBDIR}/lib/libavcodec.so ${LIBDIR}/lib/libavformat.so" FFMPEG_CFLAGS="-I${LIBDIR}/include" CXXFLAGS="-I${LIBDIR}/include"  LIB_LUA="${LIBDIR}/lib/liblua.so" LIB_LUA_LIB="${LIBDIR}/lib/liblualib.so" LIBS="-lX11" || exit $?

make ${MAKEPARAMS} || exit $?

cp -a src/stepmania ${BUILDDIR}

cd ${BUILDDIR}

