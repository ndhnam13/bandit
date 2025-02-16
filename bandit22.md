![image](https://github.com/user-attachments/assets/de066524-124a-405d-ab99-8ee8fa45fb57)

# Xem file cronjob_bandit22 trong thư mục /etc/cron.d/
![image](https://github.com/user-attachments/assets/7af1debe-8128-4cd8-919d-1f219dbe479d)

"@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null"    

- "&> /dev/null" Chuyển mọi output của chương trình vào /dev/null => Không hiển thị gì

"* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null"

- 5 dấu "*" có nghĩa là file này sẽ chạy 1 lần/phút

# Tạo 1 file bash để lưu lại dữ liệu của "cronjob_bandit22.sh"

#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

Tạo file trong thư mục /tmp/ cho mọi người dùng quyền đọc rồi lưu dữ liệu của file "bandit22" vào file mới

# cat /tmp/newpass 
