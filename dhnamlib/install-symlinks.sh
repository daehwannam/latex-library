#!/usr/bin/env bash

SCRIPT_DIR_PATH=$(dirname $0)
PREFIX=$1
if [ -z "${PREFIX}" ]; then
    PREFIX=dhnamlib-
fi

for filepath in $SCRIPT_DIR_PATH/*.sty; do
    filename=$(basename $filepath)
    ln -s $filepath $PREFIX$filename
done

for filepath in $SCRIPT_DIR_PATH/*.tex; do
    filename=$(basename $filepath)
    ln -s $filepath $PREFIX$filename
done
