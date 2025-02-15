![image](https://github.com/user-attachments/assets/4b185e59-af09-41c9-990c-c379ff629d76)

https://en.wikipedia.org/wiki/Hex_dump

# Ở level này, data.txt là hexdump của 1 file đã bị nén nhiều lần

# Tải data.txt về máy để xử lí
![image](https://github.com/user-attachments/assets/8019a3c6-59f1-41ae-b724-af8ddb908ad5)

![image](https://github.com/user-attachments/assets/f5376745-a920-4bc7-816b-6050fc91a1c8)

# Ở level này, data.txt là hexdump của 1 file đã bị nén nhiều lần
Nên nếu tìm ra đáp án thì sẽ phải chuyển đổi file hexdump về file gốc rồi giải nén chúng ra

# xxd -r data.txt > data1
Câu lệnh "xxd -r" đảo ngược hexdump về file nhị phân và lưu kết quả vào file data1
Nếu không dùng dấu ">" thì "xxd -r" sẽ chỉ in ra kết quả trong terminal

![image](https://github.com/user-attachments/assets/0a6cc112-7827-4866-8142-6bcda3a73507)

# file data1
![image](https://github.com/user-attachments/assets/2471de82-9c1f-425c-97b4-d272dba1c81c)

Kết quả cho thấy đây là fiel gzip được nén

# Giải nén file gzip(.gz) bằng "gzip -d"
Đổi tên thành "data1.gz" để giải nén

![image](https://github.com/user-attachments/assets/97849302-ec1d-4621-9d8d-6e3c2fd93237)

Bây giờ data1 đã trở thành file bzip2  

![image](https://github.com/user-attachments/assets/674a9b6e-8161-4934-9457-b29f3bce0355)

# Giải nén file bzip2(.bz2) bằng "bzip2 -d"
![image](https://github.com/user-attachments/assets/79bec20f-9649-4503-b96b-d5f8043b05e0)

Sau đó lại tiếp tục giải nén file gzip

![image](https://github.com/user-attachments/assets/5efd0104-9e76-4eb3-9406-fc96122f7b83)

Đến đây có một file mới là tar(.tar)
# Giải nén file tar(.tar) bằng "tar -x -f"
![image](https://github.com/user-attachments/assets/37aca44b-c5a6-4817-87f4-562d9add5c76)

![image](https://github.com/user-attachments/assets/61573d75-7008-4189-b726-85ee23fa2e4e)

![image](https://github.com/user-attachments/assets/b59fd4ae-70a6-475b-9172-3923ac2bcca2)

Ta có data6.bin là file bzip2

# Tiếp tục giải nén các file tar, gzip và bzip2 
![image](https://github.com/user-attachments/assets/269e3cc2-c98b-4a39-bf02-72113314f4d2)

Ta được file data8: ASCII text. File gốc chứa đáp án

# cat data8  
![image](https://github.com/user-attachments/assets/bdec30a2-7d64-4306-aedc-862aabfaaf12)
