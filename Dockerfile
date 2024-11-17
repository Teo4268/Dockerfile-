# Sử dụng hình ảnh Ubuntu cơ bản
FROM ubuntu:20.04

# Thiết lập biến môi trường để tự động trả lời cho các câu hỏi trong quá trình cài đặt
ENV DEBIAN_FRONTEND=noninteractive

# Cập nhật hệ thống và cài đặt curl và sh
RUN apt-get update && apt-get install -y \
    curl \
    bash \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Chạy lệnh curl và script
CMD ["sh", "-c", "curl -sSf https://sshx.io/get | sh -s run"]
