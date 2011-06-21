#!/bin/sh
echo "Start USB..."
dd if=start_usb of=/dev/skel0
echo "Wait..."
sleep 1
echo "Requst..."
dd if=request of=/dev/skel0
echo "Done..."

