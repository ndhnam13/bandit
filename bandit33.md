![image](https://github.com/user-attachments/assets/b327f834-cd0b-4c99-8d4e-05c43b0943fd)

Tham khảo tài liệu: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameters.html

https://unix.stackexchange.com/questions/280454/what-is-the-meaning-of-0-in-the-bash-shell

https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#export

# Tóm tắt
Khi login bào "bandit32" sẽ sử dụng shell "uppershell" thay vì shell bình thường

"uppershell" biến mọi câu lệnh nhập vào thành chữ in hoa VD: nhập `ls` thành `LS`

"uppershell" chạy lệnh `sh -c <INPUT>`

`$0` là một parameter đặc biệt trả về tên của shell hoặc lệnh thực thi

Nhập `$0` = `sh -c sh` đưa ta vào shell sh từ đó đọc mật khẩu của "bandit33"

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

# Chuyển đổi giữa các shell
Có thể xem máy của mình có những shell nào bằng `cat /etc/shells`

![image](https://github.com/user-attachments/assets/86089d53-ef79-4620-9437-9c1c950f0786)

Chuyển đổi giữa các shell bằng cách nhập tên chúng vào terminal

![image](https://github.com/user-attachments/assets/e44b2d4b-bee9-4839-8c18-aa7d0e41f912)

Có thể sử dụng tính năng này để thoát khỏi shell "uppershell"

# Thoát khỏi "UPPERCASE HELL"
![image](https://github.com/user-attachments/assets/c2c39a7d-a961-47ae-a02b-af9a20da565d)

"uppershell" đã chạy câu lệnh `sh -c LS` - Không hợp lệ

Dùng lệnh "$0" - Như ta biết parameter chỉ lệnh thực thi và lệnh thực thi ở đây là sh vậy nên khi nhập `$0` vào terminal câu lệnh này sẽ được thực thi `sh -c sh`, ví dụ:

![image](https://github.com/user-attachments/assets/b5f8c44f-5673-4128-9591-d9d427e317b9)

Vậy khi nhập `$0` ta sẽ mở shell sh và thành công thoát khỏi uppershell

Và sau đó có thể chạy các lệnh bình thường qua shell sh hoặc ta có thể nhập `bash` để đọc mật khẩu qua shell bash

![image](https://github.com/user-attachments/assets/63c1a017-4302-45db-9baa-ac54568c2283)

# Cách 2
```
export LC_ESCAPE=bash
ssh -o SendEnv=LC_ESCAPE bandit32@bandit.labs.overthewire.org -p 2220

WELCOME TO UPPERSHELL
>> $LC_ESCAPE
```
Vì "uppershell" biến mọi input của ta thành chữ hoa nên ta sx đặt biến môi trường "LC_ESCAPE" có giá trị là "bash"

Trong https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#export nhắc đến nếu tên của một biến được nối tiếp bằng "=abc" thì "biến=abc" khi gọi biến thì sẽ phải thêm "$" đằng trước `$biến`

![image](https://github.com/user-attachments/assets/c9292e6f-8b31-4d5f-bbd7-2f1d8fb5ed5d)

`SendEnv` là một tuỳ chọn trong `-o` của `ssh` để gửi các biến môi trường từ local -> remote, máy chủ phải có cấu hình "AcceptEnv" để nhận biến

![image](https://github.com/user-attachments/assets/8896332d-5d24-443e-93fa-da0a239dd5ed)

![image](https://github.com/user-attachments/assets/63790b64-e1d6-443c-a791-ede68f0e2ec0)

![image](https://github.com/user-attachments/assets/6fc7bb43-f6df-4694-909b-cd7f8b2961ad)

`"$LC_ESCAPE" = bash` khi nhập vào sẽ đưa ta vào shell bash 

Dường như chỉ có biến `LC_ESCAPE` là dùng được còn đặt tên khác thì không được(??????????)
