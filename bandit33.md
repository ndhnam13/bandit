![image](https://github.com/user-attachments/assets/b327f834-cd0b-4c99-8d4e-05c43b0943fd)


Tham khảo tài liệu: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameters.html

https://unix.stackexchange.com/questions/280454/what-is-the-meaning-of-0-in-the-bash-shell

https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#export

# Không phải shell bình thường
![image](https://github.com/user-attachments/assets/7ecfe5cc-bf9b-481c-9abd-cf94fd0f44cf)

Có thể thấy lv này biến mọi input của ta thành chữ in hoa

Và nếu vào 1 lv khác và đọc user "bandit32" trong file "/etc/passwd" ta thấy được "bandit32" chay một shell tên là "uppershell"

![image](https://github.com/user-attachments/assets/e742e1b2-32ff-4dfe-ae79-a5e00eae64e7)

# sh
Nếu chỉ dùng riêng "sh" thì sẽ đọc từ file VD: `sh echo 1` thì sh sẽ chỉ đọc file tên "echo" và thực hiện dữ liệu bên trong file đó

![image](https://github.com/user-attachments/assets/fc6cf9a7-972f-4f88-bd1d-8bdc64ea6e8a)

Nếu muốn chạy chỉ dùng "sh" thì nên tạo một file chứa lệnh rồi chạy

![image](https://github.com/user-attachments/assets/f671c710-0c8c-4180-a975-251af08cff84)

`sh -c` `c` có nghĩa là lệnh "sh" bây giờ sẽ đọc dữ liệu từ string nhập vào thay vì lệnh trong file

![image](https://github.com/user-attachments/assets/e210de6f-da47-4809-aec4-23d2fb73564e)

![image](https://github.com/user-attachments/assets/ca8a53e1-d9f7-459d-bdc4-850402598eb5)

Lưu ý: Phần giải thích của `-c` có liên quan đến cách để giải bandit32-33 "Special parameter 0"

Từ các tìm hiểu trên ta chắc chắn rằng câu lệnh của "uppershell" được thực thi qua "sh -c" theo dạng

`sh -c <input sẽ thành INPUT>`

![image](https://github.com/user-attachments/assets/7ecfe5cc-bf9b-481c-9abd-cf94fd0f44cf)

# Shell parameter
![image](https://github.com/user-attachments/assets/e3b423c3-e3ac-4d85-9c8e-7b2357ecb8be)

`$0`: Trả về tên của shell, shell script(.sh) hoặc câu lệnh thực thi, như trong ví dụ trên thì là "./test"

`$1, 2, 3`: Argument thứ 1, 2, 3 lần lượt là 'hi', 'hello', 'bye' được truyền vào script

`$@`: Tất cả các argument

# Thoát khỏi "UPPERCASE HELL"
![image](https://github.com/user-attachments/assets/c2c39a7d-a961-47ae-a02b-af9a20da565d)

"uppershell" đã chạy câu lệnh `sh -c LS` - Không hợp lệ

Dùng lệnh "$0" - Như ta biết parameter chỉ lệnh thực thi và lệnh thực thi ở đây là sh vậy nên khi nhập `$0` vào terminal câu lệnh này sẽ được thực thi `sh -c sh`, ví dụ:

![image](https://github.com/user-attachments/assets/b5f8c44f-5673-4128-9591-d9d427e317b9)

Vậy khi nhập `$0` ta sẽ mở shell sh và thành công thoát khỏi uppershell

Và sau đó có thể chạy các lệnh bình thường qua shell sh hoặc ta có thể nhập `bash` để đọc mật khẩu qua shell bash

![image](https://github.com/user-attachments/assets/63c1a017-4302-45db-9baa-ac54568c2283)
