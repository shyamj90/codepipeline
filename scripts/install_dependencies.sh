#!/usr/bin/env bash
set -eux
cd /opt/demoapp
# Install Node.js 18 (Amazon Linux 2 or Ubuntu)
if [ -f /etc/amazon-linux-release ]; then
  curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
  yum install -y nodejs
elif [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
  apt-get install -y nodejs
fi
npm ci --omit=dev
