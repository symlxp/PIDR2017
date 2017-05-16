#!/system/bin/sh
echo Running $* with pin launcher > /data/pindroid/launch.log
exec /data/pindroid/pin -xyzzy -logfile /data/pindroid/pin.log -t /data/pindroid/obj-ia32/itrace.so -- $* > /data/pindroid/test.log
