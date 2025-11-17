#!/bin/bash

# Todo: check architecture first
curl -LO https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-arm64

mv argocd-linux-arm64 /data/data/com.termux/files/usr/bin/argocd
chmod +x /data/data/com.termux/files/usr/bin/argocd
