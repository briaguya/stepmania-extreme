#!/bin/sh

scripts/patch.sh || exit $?
scripts/build-lua.sh || exit $?
scripts/build-ffmpeg.sh || exit $?
scripts/build-sm.sh

