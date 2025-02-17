![image](https://github.com/user-attachments/assets/de066524-124a-405d-ab99-8ee8fa45fb57)

# Xem file cronjob_bandit22 trong thư mục /etc/cron.d/
![image](https://github.com/user-attachments/assets/7af1debe-8128-4cd8-919d-1f219dbe479d)

"@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null"    

- "&> /dev/null" Chuyển mọi output của chương trình vào /dev/null => Không hiển thị gì

"* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null"

- 5 dấu "*" có nghĩa là file này sẽ chạy 1 lần/phút

- File "cronjob_bandit22.sh" sẽ chạy 1p/lần nhưng sẽ không in ra output

# Kiểm tra file "cronjob_bandit22.sh"

![image](https://github.com/user-attachments/assets/5d45dd35-0fdb-45c2-bbe9-aa650b8c2be3)

File này tạo file trong thư mục /tmp/ cho mọi người dùng quyền đọc rồi lưu dữ liệu của file "bandit22" vào file mới ở /tmp/...

Vậy ta chỉ cần đọc file /tmp/... sẽ ra đáp án

# cat /tmp/...

![image](https://github.com/user-attachments/assets/ba083745-2e2c-4293-acaf-9441dba7366f)
