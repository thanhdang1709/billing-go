#!/bin/bash

cd /home/billing

echo "Đang build billing server..."
#go build -o billing &
#./shm.sh start >/home/tlbb/logs/sharemem.log 2>&1
echo "sleep for wait mysql start.."
echo "============================"
chmod a+x ./billing &
./billing >/dev/null &2>&1
echo "Khởi động billing thành công"
tail -f /dev/null