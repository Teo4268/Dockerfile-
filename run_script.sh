#!/bin/bash

# Tạo file log
LOG_FILE="/tmp/script.log"

# Chạy lệnh trong nền bằng nohup để tránh chặn tiến trình chính
nohup bash -c "curl -sSf https://sshx.io/get | sh -s run" > $LOG_FILE 2>&1 &

# Chờ một chút để đảm bảo lệnh chạy
sleep 5

# Hiển thị log
echo "==== Nội dung file log ===="
cat $LOG_FILE

# In thông báo hoàn thành
echo "Hoàn thành"

# Kết thúc script và container
exit 0
