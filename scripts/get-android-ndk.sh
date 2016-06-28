#!/bin/bash

set -e -x

ANDROID_NDK=android-ndk-r12-linux-x86_64.zip
ANDROID_NDK_TOOLCHAIN_DIR=android-toolchain
# see https://developer.android.com/guide/topics/manifest/uses-sdk-element.html#ApiLevels
ANDROID_NDK_API=22

if [ ! -d "$ANDROID_NDK_TOOLCHAIN_DIR" ] ; then

    if [ ! -f "$ANDROID_NDK" ] ; then
        wget "http://dl.google.com/android/repository/${ANDROID_NDK}"
        unzip "$ANDROID_NDK"
    fi

    "${ANDROID_NDK%-linux*}/build/tools/make_standalone_toolchain.py" \
        --arch arm \
        --api "$ANDROID_NDK_API" \
        --install-dir "$ANDROID_NDK_TOOLCHAIN_DIR"
fi

export PATH="$(pwd)/${ANDROID_NDK_TOOLCHAIN_DIR}:$PATH"
export CC=arm-linux-androideabi-gcc
