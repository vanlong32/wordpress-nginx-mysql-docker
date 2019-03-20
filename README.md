# Hướng dẫn sử dụng nhanh

Chạy lần lượt các dòng lệnh dưới để cài đặt

B1. Tải các file tài nguyên
```
git clone https://github.com/vanlong32/wordpress-nginx-mysql-docker.git wordpress
```
B2. Upload code wordpress vào thư mục public_html
```
cd wordpress
git clone https://github.com/WordPress/WordPress.git public_html
```
B3. Tạo mạng Macvlan 
Lưu ý: Bạn phải đổi enp8s0 thành tên card mạng vật lý của bạn (gõ ifconfig để lấy tên này)
```
docker network create -o parent=enp8s0 --driver macvlan --subnet 192.168.1.0/24 vatly
```
B4. Tạo container
```
docker-compose up
```

B5. Truy cập 192.168.1.140 để vào trang web

