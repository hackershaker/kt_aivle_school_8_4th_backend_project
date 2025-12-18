#!/bin/bash
cd /home/ubuntu/app
nohup java -jar *.jar > app.log 2>&1 &
