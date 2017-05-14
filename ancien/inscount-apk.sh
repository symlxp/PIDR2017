
# Usage: install-pin-on-device.sh
#
#    Expect 1 emulator running


pkg=$(aapt dump badging $1|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(aapt dump badging $1|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')
# on prend les droits root
./adb root
./adb push ./inscount /data/tools/pintool/
./adb install "./inscount/SansChargement.apk"
./adb shell "cd /data/tools/pintool ; ./pin -t ./inscount2.so -- am start -n $pkg/$act"
sleep 3
./adb pull ./data/tools/pintool/inscount.out
echo "--------------------------------------"
echo "Fin du script"


