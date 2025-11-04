#!/bin/bash

# Todo: check architecture first
curl -LO https://github.com/lxc/incus/releases/latest/download/bin.linux.incus.aarch64

mv bin.linux.incus.aarch64 /data/data/com.termux/files/usr/bin/incus
chmod +x /data/data/com.termux/files/usr/bin/incus
