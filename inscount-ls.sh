
# Usage: install-pin-on-device.sh
#
#    Expect 1 emulator running



# on prend les droits root
./adb root

./adb shell "cd /data/tools/pintool ; ./pin -t /data/tools/pintool/inscount2.so -- ls"
./adb pull ./data/tools/pintool/inscount.out
echo "--------------------------------------"
echo "Fin du script"


