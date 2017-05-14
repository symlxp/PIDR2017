#
#  Expect ONE and only ONE emulator running
#


# removing last instalation
./adb shell rm -rf /data/pindroid

# new working folder
./adb shell mkdir -p /data/pindroid

# push busybox
./adb push ./busybox /data/pindroid
./adb shell chmod 775 /data/pindroid/busybox

# push the compressed folder
./adb push pin-2.14-71313-gcc.4.6-android/android-install.tar.gz /data/pindroid

# extraction
./adb shell "cd /data/pindroid/ ; ./busybox tar -zpxvf android-install.tar.gz; rm android-install.tar.gz"

# create a directory for tools to execute
./adb shell mkdir -p /data/pindroid/obj-ia32

# testing
echo
./adb shell "cd /data/pindroid/ ; ./pin -version"
#./adb shell "cd /data/pindroid/ ; ./pin -- /system/bin/ls"

echo pintool has been instaled on the device
echo
