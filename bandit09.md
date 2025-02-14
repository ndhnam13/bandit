![image](https://github.com/user-attachments/assets/8ff5260c-5a3f-4176-91c7-c4f7f1125e8c)

# cat data.txt
![image](https://github.com/user-attachments/assets/2c3d58ee-b667-48a5-8aae-dedb012ac0a7)

File rất dài

# sort
Sắp xếp các dòng trong file theo thứ tự (0-9, Aa-Zz)

# uniq
In ra hoặc loại bỏ các dòng trùng nhau
 
# sort data.txt | uniq -u 
"|" Để lấy output của "sort" làm input cho "uniq"

"uniq -u" có tác dụng in ra các dòng chỉ lặp lại một lần duy nhất nhưng không thể chỉ dùng mỗi câu lệnh "uniq -u" bởi "uniq" chỉ so sánh các dòng liền kề nhau nếu chúng bị tách xa thì sẽ không được so sánh với nhau và dù giống nhau vẫn sẽ bị tính là đặc biệt 

VD: 4 dòng anh / ban / anh / ban, thì khi "uniq -u" vẫn sẽ in ra cả 2 "anh" và "ban"

![image](https://github.com/user-attachments/assets/bb48b13e-8bdf-44b5-97c8-9c10c5b1cce5)

![image](https://github.com/user-attachments/assets/c9bb6b8a-6fb4-44fe-8226-3fedda6d1bbd)
