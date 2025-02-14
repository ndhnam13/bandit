![image](https://github.com/user-attachments/assets/a6e3381a-e937-49eb-abc0-d7e60b261fc7)

# ls
Không có thư mục nào ở đây

# find -type f -user bandit7 -group bandit6 -size 33c
Không tìm được kết quả gì

Không tìm được kết quả bởi find sẽ chỉ tìm các file bắt đầu từ thư mục hiện tại khởi chạy câu lệnh

VD: Nếu chạy "find" ở trong thư mục ~/home thì "find" sẽ chỉ quét đến ~/home/nam/inhere/file1 nhưng file thỏa mãn lại nằm ở ~/var/file2

Thì câu lệnh sẽ không trả lại kết quả nào hết

# find / -type f -user bandit7 -group bandit6 -size 33c 
Thêm "/" để tìm file thỏa mãn trong toàn bộ hệ thông

![image](https://github.com/user-attachments/assets/ee109aa3-103c-448b-a2bd-7a68ffb0e3df)

# cat /var/lib/dpkg/info/bandit7.password
![image](https://github.com/user-attachments/assets/bbf7a3a1-9c4d-4d15-b17a-ae2bd9ad185c)
