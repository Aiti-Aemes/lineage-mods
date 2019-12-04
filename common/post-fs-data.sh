#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode

mv -f /data/misc/user/0/cacerts-added/* $MODDIR/system/etc/security/cacerts
chown 0:0 $MODDIR/system/etc/security/cacerts/*
chcon u:object_r:system_file:s0 $MODDIR/system/etc/security/cacerts/*