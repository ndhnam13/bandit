![image](https://github.com/user-attachments/assets/0c77a13e-bc0c-457e-b04b-3c661e35293b)

# cat /usr/bin/cronjob_bandit24.sh

![image](https://github.com/user-attachments/assets/7a1af7ce-e1d0-409c-891c-f85a0c7f7896)

Cái script này sẽ chạy và xoá hết mọi file trong /var/spool/bandit24/foo vì nó sẽ được chạy bởi user "bandit24"

Nếu owner của file đó là "bandit23" thì file sẽ được chạy và kết thúc sau 60s rồi xoá file

Vì ta đang là user "bandit23" nên ta có thể tạo một file bash script để lưu mật khẩu bandit24
# Tạo 1 file bash script để lưu lại mật khẩu
Tạo một thư mục mới để tránh bị xoá khi chạy

Tạo file "script24.sh" sẽ lấy dữ liệu của "bandit24" về file "pw"

![image](https://github.com/user-attachments/assets/8ca66e94-a9c6-49ef-bb99-4db4121b871b)

Sau đó đặt quyền cho các file và thư mục

![image](https://github.com/user-attachments/assets/8da38e1b-0b79-479f-963e-50cfe7388b6b)

Sau đó copy file "script24.sh" vào /var/spool/bandit24/foo/

![image](https://github.com/user-attachments/assets/3dafc90c-8f1b-4bb5-850f-0dcbf0148b87)

# Chờ 60s rồi cat pw
![image](https://github.com/user-attachments/assets/0ab83505-98af-4a06-b67c-5cdbc3f2f73e)
