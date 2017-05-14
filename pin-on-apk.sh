#./adb install SansChargement.apk
#./adb uninstall fr.jackyho.pidr
#./adb shell rm /data/pindroid/launchpin.sh
#./adb push ./launchpin.sh /data/pindroid

pkg=$(aapt dump badging $1|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(aapt dump badging $1|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')

#./adb shell setprop wrap.$pkg "logwrapper/data/pindroid/launchpin.sh"
echo aaa

#./adb shell am start -n $pkg/$act

#./adb shell rm /data/property/persist.this.is.my.property

./adb shell reboot

