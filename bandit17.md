![image](https://github.com/user-attachments/assets/d9d33cc3-fdac-4f6c-9174-591234fdf755)

https://en.wikipedia.org/wiki/Port_scanner

# Quét port sử dụng "nmap"
Lựa chọn "-sV" để quét "dịch vụ/ phiên bản" tất cả các port từ 31000-32000 để tìm port chạy dịch vụ ssl/tsl 

![image](https://github.com/user-attachments/assets/dce2fac5-c4e4-4659-ba9f-8281d7ba746f)

port 31518 hiện ssl/echo và 31790 hiện ssl/unknown

Ta sẽ loại port 31518 vì "echo" in ra những gì mà người dùng nhập vào

# openssl s_client -connect localhost:31790 -quiet
"-quiet" để không hiện "KEYUPDATE" và in ra private key

![image](https://github.com/user-attachments/assets/842e9334-0d31-4241-a629-0ccc27a3ee88)

# Exit và tạo 1 file "ssh16key.private" để đăng nhập vào level tiếp theo bằng private key
Cho nội dung của rsa private key vào trong file

![image](https://github.com/user-attachments/assets/409e2489-c06c-4e62-8199-95f4e2a86524)

# ssh -i ssh16key.private bandit17@bandit.labs.overthewire.org -p 2220
