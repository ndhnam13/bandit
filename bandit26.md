![image](https://github.com/user-attachments/assets/7aa8468f-3039-4b9c-8678-f52440756aae)

# Shell của user "bandit26"
Mỗi một user sẽ sử dụng một shell khác nhau, có thể xem thông tin về shell của user trong file /etc/passwd

![image](https://github.com/user-attachments/assets/ce946088-ff4d-4217-a98b-b67ed00dc1f7)

Script "showtext" sẽ mở file "text.txt" vói lệnh "more"

# Lệnh "more"
Đọc file ở trong cửa sổ terminal
VD:

![image](https://github.com/user-attachments/assets/4bc71a1e-e37e-48b9-9f1e-7bff933c781b)

![image](https://github.com/user-attachments/assets/a9306120-2692-4a2c-bece-c61ad517c4e0)

Đọc file "sshkey.private" sẽ không hiện toàn bộ như cat mà chỉ hiện 87% của nó muốn xem tiếp phải đi xuống bằng phím

# ssh vào "bandit26" bằng private key
![image](https://github.com/user-attachments/assets/6893a284-c52b-41ef-a6c1-4582312230b6)

![image](https://github.com/user-attachments/assets/5f0c3514-9a69-43bb-8996-8ff2bbf57e1b)

Khi login vào "bandit26", "text.txt" sẽ được mở

Vì "text.txt" được mở bởi "more" mà "text.txt" lại rất bé nên nếu để cửa sổ terminal to thì "text.txt" sẽ chạy xong và thoát 

Vậy nên ta phải login vào "bandit26" để cửa số terminal nhỏ thì sẽ thấy "text.txt"

![image](https://github.com/user-attachments/assets/fdd45129-6967-4682-8ef5-9121e98d49f3)

Sau đó có thể dùng câu lệnh "v" để mở edit bằng vim (text editor)

# :set shell

Vì shell đang sử dụng là usr/bin/showtext nên để đổi shell sang /bin/bash ta dùng lệnh ":set shell="

![image](https://github.com/user-attachments/assets/29e46946-09c1-4a52-bf87-d2147dabf5bd)

":set shell?" để kiểm tra shell

Sau đó ":shell" để chạy

![image](https://github.com/user-attachments/assets/6c07827d-1ba3-4b91-8ed2-e134070d5a9a)
