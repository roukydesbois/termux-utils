#!/bin/bash

pkg install nodejs curl unzip

mkdir tmp
cd tmp
curl -OL https://releases.hashicorp.com/terraform-ls/0.38.0/terraform-ls_0.38.0_linux_arm64.zip
unzip terraform-ls_0.38.0_linux_arm64.zip
mv terraform-ls /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/terraform-ls
cd ..
rm -rf tmp
cd ~

npm install -g @github/copilot-language-server
npm install -g @ansible/ansible-language-server
npm install -g yaml-language-server
cat > ~/.config/helix/languages.toml << 'EOF'
[language-server.copilot]
command = "copilot-language-server"
args = ["--stdio"]

[[language]]
name = "yaml"
language-servers = [{ name = "copilot" }, { name = "ansible-language-server" }, { name = "yaml-language-server"}]

[[language]]
name = "hcl"  
language-servers = [{ name = "copilot" }, { name = "terraform-ls" }]
EOF
