#!/bin/bash
PID=$(pgrep -f jar)
if [ -n "$PID" ]; then
  kill -15 $PID
  sleep 5
fi
