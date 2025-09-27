#!/bin/bash

# Todo: check architecture first
curl -LO https://github.com/siderolabs/talos/releases/download/v1.11.2/talosctl-linux-arm64

mv talosctl-linux-arm64 /data/data/com.termux/files/usr/bin/talosctl
chmod +x /data/data/com.termux/files/usr/bin/talosctl
