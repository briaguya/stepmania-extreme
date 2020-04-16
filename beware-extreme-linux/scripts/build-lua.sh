#!/bin/sh

. scripts/settings.sh

cd ${LUADIR}

sed -i "s,INSTALL_ROOT= /usr/local,INSTALL_ROOT= ${LIBDIR},g" config

mkdir ${LIBDIR}
mkdir ${LIBDIR}/lib
mkdir ${LIBDIR}/include

make all so install soinstall || exit $?

cd ${BUILDDIR}

