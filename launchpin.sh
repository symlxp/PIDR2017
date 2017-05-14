#!/system/bin/sh
echo Running $* with pin launcher > /data/local/tmp/launch.log
exec /data/pindroid/pin -xyzzy -logfile /data/local/tmp/pin.log -t /data/pindroid/obj-ia32/inscount2.so -- $*
