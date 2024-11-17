# Sử dụng hình ảnh Ubuntu cơ bản
FROM ubuntu:20.04

# Thiết lập biến môi trường để tự động trả lời cho các câu hỏi trong quá trình cài đặt
ENV DEBIAN_FRONTEND=noninteractive

# Cập nhật hệ thống và cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    procps \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Copy script để chạy lệnh trong nền
COPY run_script.sh /usr/local/bin/run_script.sh

# Gán quyền thực thi cho script
RUN chmod +x /usr/local/bin/run_script.sh

# Khởi chạy script
CMD ["/usr/local/bin/run_script.sh"]
