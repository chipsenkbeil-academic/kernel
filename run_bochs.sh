#!/bin/bash

# run_bochs.sh
# mounts the correct loopback device, runs bochs, then unmounts.

LOSETUP=/sbin/losetup

sudo $LOSETUP /dev/loop0 floppy.img
sudo bochs -f bochsrc.txt
sudo $LOSETUP -d /dev/loop0

