![image](https://github.com/user-attachments/assets/e77db5df-dd5f-4f99-a2ac-c716d2035785)

https://en.wikipedia.org/wiki/Setuid

# ls -l 
![image](https://github.com/user-attachments/assets/27f6da58-8836-48a1-a40d-2ef052130096)

Thấy rằng user bandit20 có quyền đọc và viết file "bandit20-do" và group bandit19 có quyền đọc và chạy nó
Chữ "s" trong phần "-rws" của user bandit20 là setuid tức là nếu user bandit19 chạy file "bandit20-do" thì sẽ được chạy dưới quyền của user bandit20

![image](https://github.com/user-attachments/assets/32710db6-91b5-461e-bd5a-b1a3cefca105)

# ./bandit20-do cat /etc/bandit_pass/bandit20
Vậy nên ta có thể đọc được mật khẩu của bandit20

![image](https://github.com/user-attachments/assets/4e0d234f-fa84-43ad-9312-85968f045667)
