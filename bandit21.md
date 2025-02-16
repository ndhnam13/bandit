![image](https://github.com/user-attachments/assets/578c5e25-d50e-4c1b-abd1-5f5c2131d082)

# Tạo một server lắng nghe trên một port bất kỳ
In ra mật khẩu của lv trước ("-n" để không in ký tự xuống dòng) vào port 1234

Port 1234 đang ở trạng thái listening (-l) và được đưa vào background "&" để thực hiện lệnh tiếp theo trong terminal
![image](https://github.com/user-attachments/assets/7d3295d0-3f66-481f-a6ff-fffe5cf4324a)

# ./suconnect 1234
Chạy "suconnect" sẽ kết nối đến localhost và chờ nhận dữ liệu từ port 1234

Nếu dữ liệu nhận được từ port 1234 chứa đúng mật khẩu của bandit20, chương trình sẽ xác thực và in ra mật khẩu của bandit21

![image](https://github.com/user-attachments/assets/a172c475-0745-4468-807e-00c40bd63302)
