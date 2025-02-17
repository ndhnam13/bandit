![image](https://github.com/user-attachments/assets/15bf2ead-d1af-4fef-9863-87704a8e681b)

# cat /usr/bin/cronjob_bandit23.sh
![image](https://github.com/user-attachments/assets/e31de5d8-a5c7-4b07-8669-13b1f4be9912)

File "cronjob_bandit23.sh" sẽ copy mật khẩu của "$myname" đến file "$mytarget" trong thư mục /tmp/

Nhập "whoami" vào terminal ta thấy mình là "bandit22" vậy nếu muốn lấy mật khẩu của lv tiếp theo chỉ cần đặt "myname" là "bandit23"

# echo I am user bandit23 | md5sum | cut -d ' ' -f 1
Để biết được tên của file "$mytarget" trong /tmp/ chỉ cần nhập câu lệnh echo và đổi biết "$myname" thành "bandit23"

![image](https://github.com/user-attachments/assets/63236508-ddd2-496c-9944-2b8b3bd5e8f5)

Ta có tên file

# cat /tmp/8ca319486bfbbc3663ea0fbe81326349 
![image](https://github.com/user-attachments/assets/8f2ad11a-7a5b-4633-993d-8884c452dc46)

# Lưu ý: Không hoạt động với các lv sau
![image](https://github.com/user-attachments/assets/d51828e3-3e11-42ac-83df-a4e86ea6955b)
