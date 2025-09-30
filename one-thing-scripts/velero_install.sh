#/bin/bash
pkg install -y curl tar

# Todo: check architecture first
curl -OL https://github.com/vmware-tanzu/velero/releases/download/v1.17.0/velero-v1.17.0-linux-arm64.tar.gz
tar xvzf velero-v1.17.0-linux-arm64.tar.gz
rm velero-v1.17.0-linux-arm64.tar.gz
mv velero-v1.17.0-linux-arm64/velero /data/data/com.termux/files/usr/bin/velero
rm -r velero-v1.17.0-linux-arm64
chmod +x /data/data/com.termux/files/usr/bin/velero
