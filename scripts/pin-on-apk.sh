#./adb install SansChargement.apk
#./adb uninstall fr.jackyho.pidr

# remove
./adb shell rm /data/pindroid/launchpin.sh
./adb shell rm /data/pindroid/itrace.out
./adb shell rm /data/pindroid/launch.log
./adb shell rm /data/pindroid/pin.log
./adb shell rm /data/pindroid/test.log

# push launchpin on the device
./adb push ./scripts/launchpin.sh /data/pindroid
./adb shell chmod 777 /data/pindroid/launchpin.sh


# stock variable
pkg=$(aapt dump badging $1|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(aapt dump badging $1|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')
echo 
echo


# set prop
./adb shell "su -c setprop wrap.$pkg 'logwrapper /data/pindroid/launchpin.sh'"
echo "wrap.$pkg: $(./adb shell getprop wrap.$pkg)"
echo 
echo

# start the app
./adb shell am start -n $pkg/$act


