#!/bin/bash

LOSETUP=/sbin/losetup

sudo "$LOSETUP /dev/loop0 floppy.img"
sudo "mount /dev/loop0 /mnt"
sudo "cp src/kernel /mnt/kernel"
sudo "umount /dev/loop0"
sudo "$LOSETUP -d /dev/loop0"

