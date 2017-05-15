#
#  Expect an apk
#

# take informations
pkg=$(aapt dump badging $1|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(aapt dump badging $1|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')

# remove previous instalation then install
./adb uninstall $pkg
./adb install $1

# launch the app
./adb shell "cd /data/pindroid/ ; ./pin -t obj-ia32/itrace.so -- /system/bin/am start -n $pkg/$act"
