#!/usr/bin/env bash
set -eux

cat >/etc/systemd/system/demoapp.service <<'UNIT'
[Unit]
Description=Demo Node App
After=network.target

[Service]
Type=simple
WorkingDirectory=/opt/demoapp
ExecStart=/usr/bin/node /opt/demoapp/app.js
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
UNIT

systemctl daemon-reload
systemctl enable demoapp
systemctl restart demoapp
