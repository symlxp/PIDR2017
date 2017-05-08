
# Usage: install-pin-on-device.sh
#
#    Expect 1 emulator running



# on prend les droits root
./adb root

# on ajoute le dossier pindroid avec les droits
./adb shell rm -rf /data/tools/pintool

# on push busybox et l'archive pin à extraire
./adb push ./busybox /data/tools/pintool/
./adb push ./android-install.tar.gz /data/tools/pintool/

# on extrait
./adb shell "cd /data/tools/pintool ; ls -al ; ./busybox tar xzvf android-install.tar.gz ; rm android-install.tar.gz"
./adb shell "cd /data/tools/pintool ; ./pin -t /data/tools/pintool/inscount2.so -- ls"
./adb pull ./data/tools/pintool/inscount.out
echo "--------------------------------------"
echo "Fin du script"


