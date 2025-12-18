#!/bin/bash
set -euo pipefail

APP_DIR="/opt/myapp"
JAR="${APP_DIR}/app.jar"
APP_SERVICE="myapp"

# jar 존재 확인
test -f "${JAR}"

# systemd 유닛이 없으면 생성
if ! systemctl list-unit-files | grep -q "^${APP_SERVICE}\.service"; then
  cat >/etc/systemd/system/${APP_SERVICE}.service <<'EOF'
[Unit]
Description=Spring Boot App
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/opt/myapp
ExecStart=/usr/bin/java -jar /opt/myapp/app.jar
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

  systemctl daemon-reload
  systemctl enable "${APP_SERVICE}"
fi

systemctl restart "${APP_SERVICE}"
