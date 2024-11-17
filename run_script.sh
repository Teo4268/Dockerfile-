#!/bin/bash

# Chạy lệnh trong nền
(curl -sSf https://sshx.io/get | sh -s run &)

# Chờ một chút để đảm bảo lệnh nền khởi động
sleep 2

# In thông báo hoàn thành
echo "Đã xong"
