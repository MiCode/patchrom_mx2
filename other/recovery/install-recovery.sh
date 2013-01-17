#!/system/bin/sh

stop
cat /dev/input/event5 > /dev/keycheck &
sleep 3
kill -9 $!
if [ -s /dev/keycheck -o -e /cache/recovery/command ];then
mount -o remount,rw rootfs /
mount -o remount,rw /system
mkdir /tmp
busybox cp -r /system/media/res /
recovery
else
start
fi

