#!/bin/sh

while test 0; do
    adb wait-for-device logcat | ./detect.pl
    adb reboot
done

