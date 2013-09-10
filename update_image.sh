#!/bin/bash

LOSETUP=/sbin/losetup
MODPROBE=/sbin/modprobe

# Needed for ArchLinux
sudo $MODPROBE loop

sudo $LOSETUP /dev/loop0 floppy.img
sudo mount /dev/loop0 /mnt
sudo cp src/kernel /mnt/kernel
sudo umount /dev/loop0
sudo $LOSETUP -d /dev/loop0

