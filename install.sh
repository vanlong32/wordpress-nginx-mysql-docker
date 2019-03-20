#!bin/bash

git clone https://github.com/vanlong32/wordpress-nginx-mysql-docker.git wordpress

# Upload code wordpress vào thư mục public_html
cd wordpress
git clone https://github.com/WordPress/WordPress.git public_html

# tạo mạng Macvlan 
# Lưu ý: Bạn phải đổi enp8s0 thành tên card mạng vật lý của bạn (gõ ifconfig để lấy tên này)
docker network create -o parent=enp8s0 --driver macvlan --subnet 192.168.1.0/24 vatly

# Tạo container
docker-compose up
