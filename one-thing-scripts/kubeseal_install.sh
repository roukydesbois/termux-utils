#!/bin/bash
pkg install -y curl tar jq

# Fetch the latest version dynamically
KUBESEAL_VERSION=$(curl -s https://api.github.com/repos/bitnami-labs/sealed-secrets/tags | jq -r '.[0].name' | cut -c 2-)

if [ -z "$KUBESEAL_VERSION" ]; then
  echo "Failed to fetch the latest KUBESEAL_VERSION"
  exit 1
fi

echo "Installing kubeseal version ${KUBESEAL_VERSION}..."

# Todo: check architecture first
curl -OL "https://github.com/bitnami-labs/sealed-secrets/releases/download/v${KUBESEAL_VERSION}/kubeseal-${KUBESEAL_VERSION}-linux-arm64.tar.gz"
tar -xvzf kubeseal-${KUBESEAL_VERSION}-linux-arm64.tar.gz kubeseal
rm kubeseal-${KUBESEAL_VERSION}-linux-arm64.tar.gz
mv kubeseal /data/data/com.termux/files/usr/bin/kubeseal
chmod +x /data/data/com.termux/files/usr/bin/kubeseal

echo "kubeseal installed successfully!"
kubeseal --version
