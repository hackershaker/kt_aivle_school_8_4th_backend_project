#!/bin/bash
set -euo pipefail

APP_SERVICE="myapp"

# 서비스가 있으면 중지(없으면 무시)
if systemctl list-unit-files | grep -q "^${APP_SERVICE}\.service"; then
  systemctl stop "${APP_SERVICE}" || true
fi
