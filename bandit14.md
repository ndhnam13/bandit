![image](https://github.com/user-attachments/assets/7eafbe98-4a33-4024-a2e1-155874324aba)

https://help.ubuntu.com/community/SSH/OpenSSH/Keys

# File sshkey.private
![image](https://github.com/user-attachments/assets/3b930663-285d-4e55-b1ba-cf4267075a0f)

Private key được dùng để xác thực không dùng mật khẩu khi đăng nhập vào máy chủ
Ta sẽ sử dụng file này để "ssh" vào bandit14

# ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
Lưu lại file sshkey.private vào máy

Khi tạo file, Linux sẽ cho quyền mặc định

Cho nên phải đổi quyền của file chỉ dành cho chủ sở hữu nếu không sẽ báo lỗi 

![image](https://github.com/user-attachments/assets/54ce3a72-a0bb-4d55-852e-b23ed32c2086)

Đổi quyền bằng câu lệnh "chmod 600 sshkey.private" cho chủ sở hữu quyền đọc và viết 
![image](https://github.com/user-attachments/assets/89d6eb5a-f3b7-4530-8f0e-f529f0dd143e)
