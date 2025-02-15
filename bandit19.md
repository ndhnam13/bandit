![image](https://github.com/user-attachments/assets/6033b14e-0d2e-4a27-9a8b-56d199071075)

# File ".bashrc" bị thay đổi
".bashrc" là một file tự động được khởi chạy khi 1 người dùng đăng nhập vào máy. Nhưng ở level này nó đã bị thay đổi để tự exit khi người dùng đăng nhập vào

![image](https://github.com/user-attachments/assets/f3d36b21-7d4c-4f8a-867f-3356018a80b5)

Để giải bài này chỉ cần thực hiện luôn câu lệnh "cat" ở trong "ssh" hoặc có thể copy file readme về máy

# ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
![image](https://github.com/user-attachments/assets/21834282-efbf-4f85-8f1c-63eb01a58506)

# scp -P 2220 bandit18@bandit.labs.overthewire.org:~/readme . 
![image](https://github.com/user-attachments/assets/5465d86d-4919-4626-a1c1-e0f2d2d14914)
