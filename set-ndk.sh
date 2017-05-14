# removing last instalation
rm -rf x86-4.6

# creation of a standalone toolchain
android-ndk-r9/build/tools/make-standalone-toolchain.sh --toolchain=x86-4.6 --package-dir= ./ndk-links

# toolchaine directory
PACKAGE_DIR=/tmp/ndk-$USER
TOOLCHAIN_NAME=x86-4.6
PACKAGE_FILE="$PACKAGE_DIR/$TOOLCHAIN_NAME.tar.bz2"

# extraction
tar jxvf $PACKAGE_FILE

# links creation
cd x86-4.6/bin
link i686-linux-android-gcc gcc
link i686-linux-android-g++ g++
link i686-linux-android-ar ar
link i686-linux-android-ranlib ranlib
