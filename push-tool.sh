#
#  Expect ONE and only ONE emulator running
#  Expect the "x86-4.6" directory
#

if [ $# -eq 1 ]
  then
    # remember initial path
    HERE="$PWD"
    
    # moving to the tools directory
    cd pin-2.14-71313-gcc.4.6-android/source/tools/ManualExamples

    # compiling
    CC="$HERE/x86-4.6/bin/gcc"
    CXX="$HERE/x86-4.6/bin/g++"
    make HOST_ARCH=ia32 TARGET_OS=android CC=$CC CXX=$CXX obj-ia32/$1.so

    cd $HERE

    # removing last instalation
    ./adb shell "cd /data/pindroid/obj-ia32 ; rm $1.so"

    #push
    MANUAL="$HERE/pin-2.14-71313-gcc.4.6-android/source/tools/ManualExamples"
    ./adb push $MANUAL/obj-ia32/$1.so /data/pindroid/obj-ia32

  else
    echo "Usage : write the name of the tool you want to compil"
fi



#/home/clement/Documents/PIDR/pindroid5/pin-2.14-71313-gcc.4.6-android/source/tools/ManualExamples/obj-ia32
