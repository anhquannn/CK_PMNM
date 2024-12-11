# Sử dụng Python 3.13 làm image gốc
FROM python:3.13

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file yêu cầu cài đặt Python
COPY requirements.txt .

# Cài đặt các thư viện cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Mở port 8000 để truy cập ứng dụng Django
EXPOSE 8000

# Lệnh chạy server Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
