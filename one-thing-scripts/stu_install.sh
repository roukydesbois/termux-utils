#/bin/bash
pkg install -y curl tar rust git

curl -OL https://github.com/lusingander/stu/releases/download/v0.7.4/stu-0.7.4-aarch64-unknown-linux-musl.tar.gz
tar xvzf stu-0.7.4-aarch64-unknown-linux-musl.tar.gz
rm stu-0.7.4-aarch64-unknown-linux-musl.tar.gz
mv stu /data/data/com.termux/files/usr/bin/stu
chmod +x /data/data/com.termux/files/usr/bin/stu

# mkdir -p ~/projects/stu
# cd ~/projects/stu
# git clone https://github.com/lusingander/stu.git
# cd stu
# cargo build --release --no-default-features
