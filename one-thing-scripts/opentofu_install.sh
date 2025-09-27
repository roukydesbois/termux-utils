#/bin/bash
pkg install -y curl unzip

# Todo: check architecture first
curl -OL https://github.com/opentofu/opentofu/releases/download/v1.10.6/tofu_1.10.6_linux_arm64.zip
unzip tofu_1.10.6_linux_arm64.zip tofu
rm tofu_1.10.6_linux_arm64.zip
mv tofu /data/data/com.termux/files/usr/bin/tofu
chmod +x /data/data/com.termux/files/usr/bin/tofu
