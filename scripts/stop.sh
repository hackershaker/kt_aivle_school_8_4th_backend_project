#!/bin/bash
set -euo pipefail

APP_SERVICE="myapp"

# 서비스가 있으면 중지(없으면 무시)
if systemctl list-unit-files | grep -q "^${APP_SERVICE}\.service"; then
  systemctl stop "${APP_SERVICE}" || true
fi

# 혹시 직접 java -jar로 떠 있던 프로세스가 있으면 보조로 정리(필요 시)
pkill -f "/opt/myapp/app\.jar" || true
