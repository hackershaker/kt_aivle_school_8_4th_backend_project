#!/usr/bin/env bash
set -euo pipefail

JAR="$(ls -1 /opt/myapp/*.jar | grep -v '\-plain\.jar$' | head -n 1)"
exec java -jar "$JAR"