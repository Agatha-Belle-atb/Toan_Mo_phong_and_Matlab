# Toan_Mo_phong_and_Matlab

Đây là nơi ghi lại quá trình học môn Toán mô phỏng và Matlab

# 📘 TỔNG HỢP KIẾN THỨC MATLAB & MÔ HÌNH HÓA HỆ THỐNG

Tài liệu này tổng hợp các lệnh cơ bản trong MATLAB, thao tác với biến, ma trận, đồ thị 2D và một số bài tập ứng dụng (như giải bài toán động học cơ cấu tay quay con trượt).

> Bạn có thể thoải mái đóng góp (contribute) hoặc liên kết (fork) dự án này.  
> Có thể tìm hiều thêm viết bằng ngôn ngữ Markdown để ghi chú, note,... rất dễ để viết.  
> You are free to contribute or fork this repo.  
---
Gồm 7 chương
# 📑 Mục lục

- [📘 TỔNG HỢP KIẾN THỨC MATLAB \& MÔ HÌNH HÓA HỆ THỐNG](#-tổng-hợp-kiến-thức-matlab--mô-hình-hóa-hệ-thống)
  - [📑 Mục lục](#-mục-lục)
  - [Chương 1: Vai trò của mô hình hóa hệ thống](#chương-1-vai-trò-của-mô-hình-hóa-hệ-thống)
    - [1.1. Khái niệm mở đầu](#11-khái-niệm-mở-đầu)
    - [1.2. Lệnh hệ thống \& Cú pháp cơ bản](#12-lệnh-hệ-thống--cú-pháp-cơ-bản)
  - [Chương 2: Giới thiệu cơ bản về Matlab](#chương-2-giới-thiệu-cơ-bản-về-matlab)
    - [Hàm toán học và số phức](#hàm-toán-học-và-số-phức)
      - [2.1. Toán học cơ bản](#21-toán-học-cơ-bản)
      - [2.2. Làm tròn số](#22-làm-tròn-số)
      - [2.3. Số phức (z = a + bi)](#23-số-phức-z--a--bi)
    - [Nhập/Xuất \& Định dạng dữ liệu](#nhậpxuất--định-dạng-dữ-liệu)
      - [2.4. Định dạng hiển thị (format)](#24-định-dạng-hiển-thị-format)
      - [2.5. Nhập/Xuất dữ liệu](#25-nhậpxuất-dữ-liệu)
      - [2.6. Thao tác với File](#26-thao-tác-với-file)
  - [Chương 3: Ma trận và vecto](#chương-3-ma-trận-và-vecto)
    - [Toán học cơ bản](#toán-học-cơ-bản)
    - [Làm tròn số](#làm-tròn-số)
    - [Số phức (z = a + bi)](#số-phức-z--a--bi)
  - [Chương 4: Lập trình trong Matlab](#chương-4-lập-trình-trong-matlab)
    - [Định dạng hiển thị (format)](#định-dạng-hiển-thị-format)
    - [Nhập/Xuất dữ liệu](#nhậpxuất-dữ-liệu)
    - [Thao tác với File](#thao-tác-với-file)
  - [Chương 5: Đồ họa trong Matlab](#chương-5-đồ-họa-trong-matlab)
    - []
  - [Chương 6: Lập trình giao diện người dùng GUI](#chương-6-lập-trình-giao-diện-người-dùng-gui)
    - []
  - [Chương 7: SIMULINK và ứng dụng](#chương-7-simulink-và-ứng-dụng)
    - []
---

## Chương 1: Vai trò của mô hình hóa hệ thống

### 1.1. Khái niệm mở đầu

**Vai trò của Mô hình hóa hệ thống:**
- Biểu diễn bằng **Phương trình toán học**.
- Chuyển đổi thành **Hàm truyền**.
- Xây dựng **Hệ phương trình trạng thái (PTTT)**.
- ......
---

### 1.2. Lệnh hệ thống & Cú pháp cơ bản

MATLAB có đặc điểm là <big> **không cần khai báo kiểu dữ liệu** </big> và tự động nhận diện biến.

| Lệnh / Phím tắt | Chức năng |
| :--- | :--- |
| `Ctrl + C` | Dừng lệnh đang chạy (khi bị lặp vô hạn hoặc không nhấc lệnh). |
| `ans` | Biến tạm lưu kết quả gần nhất (Hạn chế lạm dụng). |
| `...` | Viết tiếp lệnh xuống dòng (không dùng Shift+Enter). |
| `;` | Kết thúc lệnh, thực thi nhưng **không hiển thị** kết quả ra màn hình. |
| `,` | Ngăn cách các lệnh nếu viết nhiều lệnh trên cùng một dòng. |
| `who` / `whos` | Liệt kê danh sách các biến đang có trong vùng làm việc (Workspace). |
| `clear a` | Xóa biến `a` khỏi bộ nhớ. |
| `clear all` | Xóa tất cả các biến. |
| `help [tên_lệnh]`| Tra cứu công dụng của lệnh. (Hoặc bôi đen lệnh + nhấn `F1`). |
| `lookfor [từ_khóa]`| Tìm kiếm tất cả các lệnh có chứa từ khóa đó. |
| `%` / `Ctrl + R` | Tạo ghi chú (comment) trong code. |

## Chương 2: Giới thiệu cơ bản về Matlab
### Hàm toán học và số phức
#### 2.1. Toán học cơ bản

- `sqrt(x)`: Căn bậc 2.
    VD: `sqrt(4) = 2`: $\sqrt{4} = 2$ 
- `exp(x)`: Hàm mũ cơ số $e$ ($e^x$).
- `rem(x, y)`: Tìm phần dư của phép chia $x$ cho $y$.
- `mod()`: Kiểm tra phần dư của một số.
- `log10(x)`: Logarit cơ số 10.
- `log(x)`: Logarit tự nhiên (ln).

#### 2.2. Làm tròn số

- `round(x)`: Làm tròn về số nguyên gần nhất (Ví dụ: `round(5.2) = 5`).
- `ceil(x)`: Làm tròn lên (Ví dụ: `ceil(2.1) = 3`).
- `floor(x)`: Làm tròn xuống (Ví dụ: `floor(2.9) = 2`).

#### 2.3. Số phức ($z = a + bi$)

- `z = complex(a, b)`: Khởi tạo số phức.
- `real(z)` / `imag(z)`: Lấy phần thực / phần ảo.
- `abs(z)`: Tính module (độ lớn).
- `angle(z)`: Tính góc pha (argument) theo radian.
  *(Mẹo đổi sang độ: `angle(z) * 180 / pi` hoặc dùng hàm `rad2deg`).*
---
### Nhập/Xuất & Định dạng dữ liệu

#### 2.4. Định dạng hiển thị (format)

- `format short`: Hiển thị 5 chữ số.
- `format long`: Hiển thị 15 chữ số.
- `format rat`: Hiển thị dưới dạng phân số.

#### 2.5. Nhập/Xuất dữ liệu

- **Nhập:** * `a = input('Nhập số: ')`: Nhập số.
  - `b = input('Nhập chuỗi: ', 's')`: Nhập chuỗi văn bản.
- **Xuất:**
  - `disp('Xin chao')`: Hiển thị chuỗi/biến không kèm định dạng.
  - `fprintf('Tuổi của bạn là: %d\n', tuoi)`: In có định dạng (`%d` cho số nguyên, `%f` cho số thập phân, `\n` để xuống dòng).

#### 2.6. Thao tác với File

- `save bt.mat`: Lưu toàn bộ workspace vào file `.mat`.
- `load('bt.mat')`: Tải dữ liệu từ file vào workspace.
- Ghi file Text:
  
  ```matlab
  fid = fopen('baitap.txt', 'w');
  fprintf(fid, '%f', a);
  fclose(fid);

## Chương 3: Ma trận và Vecto
Khai báo vecto hàng: đc cách nhau dấu phẩy hoặc khoảng trống  
x=[8 9 10], x=7,8,9] 
-Khai báo trực tiếp:  

-Khai báo tự động:  
+dấu 2 chấm: bắt đầu: Bước nhảy: Kết thúc (Bắt đầu:Kết thúc)  
(Bước nhảy: quy luật của dãy số)  
0:5:100 --> dùng để lấy mẫu dữ liệu  
x=0:5:100  
+dùng lệnh limspace: limspace(bắt đầu,kết thúc,sluong số hạn)  
 x=linspace(0,100,20)  
+logspace(a,b,n): dùng để vẽ biểu đồ bode trong matlap(a,b: 10 mũ a,,,)  
logspace(1,3,3): 10^1,10^2,chia 3 điểm:10 100 1000  

Khai báo vecto cột: mở ngoặc vuông và khai báo từng phần tử  
trong cùng 1 hàng, cách nhau dấu phẩy hoặc khoảng trắng, các hàng cách nhau bởi dấu chấm phẩy hoặc xuống dòng  
y=[1;3;5]  
rand: ma trận gồm các số ngẫu nhiên(0<x<1)  
rand(kích thước ma trận)  
rand(2,3):2 hàng 3 cột  
rand(2): 2 hàng 2 cột  
randi:Tạo ra ma trận ngẫu nhiên, thành phần trong ma trận là số nguyên  
randi([0,10],2): 2 hàng, 2 cột, số nguyên  
tạo ra ma trận ngẫu nhiên 4x4  

MỘT SỐ MA TRẬN ĐẶC BIỆT  
eye(3,3): tạo ma trận đơn vị  
ones: tạo ma trận mà tất cả phần tử đều nhận giá trị 1  
zeros: tạo ma trận mà tất cả phần tử đều nhận giá trị 0  
diag(vecto đường chéo): tạo ma trận đường chéo  
Khai báo vecto ở trong dấu ngoặc vuông  
diag([3 5 7])  
THAO TÁC TRÊN VECTO VÀ MA TRẬN  
+Gọi tên mảng(vị trí dữ liệu cần truy xuất)  
               (Hàng, cột    chỉ số)(đánh số theo cột)  
A=[3 7 9;6 2 4]  
A(1,3)->9  
A(5)->9 (đánh chỉ số)  
 C(1,1:4): 1:4: trả về 1 2 3 4,  
hàng 1 cột 1, hàng 1 cột 2,...  
C(1,: ): tất cả các cột trên hàng1  
C(:,2): : là tất cả các hàng, 2 là tất cả các cột 2  
C(:, [2 4])  
C(:,2:2:4)  
## Chương 4: Lập trình trong MATLAB 

## Chương 5: Đồ họa trong Matlab

đây là chương 5 được giới thiệu

## Chương 6: Lập trình giao diện người dùng GUI

## Chương 7: SIMULINK và ứng dụng


Đây là chữ bình thường, đây là <big> chữ to </big> bình thường <small> chữ nhỏ </small>  
đây là <span style="color: red">màu <big>đỏ</big> tươi thắm</span> nhưng *lại* **rất** ***đẹp***

<small>chúng quá nhỏ </small> so với bình thường

| Cột 1 | Cột 2 | Cột 3 | Cột 4 |
| :--- | :--- | :--- | :--- | 
| A | B | C | D |
| E | F | G | H |
| I | K | L | M |


- [ ] Checkbox
- [x] Checked

`#include <stdio.h>`
- Đây là đoạn code C mẫu
```CPP
#include<stdio.h>

int main(){
	int a[1003],n;
	scanf("%d",&n);
	for(int i =0;i<n;i++){
		scanf("%d",&a[i]);
	}
	int quantity_even_number = 0,quantity_odd_number = 0;
	int sum_even = 0, sum_odd = 0;
	for(int j = 0;j<n;j++){
		if(a[j]%2 == 0){ // number even
			quantity_even_number++;
			sum_even += a[j]; //sum_even = sum_even + a[j]
		}
		else{ // number odd
			quantity_odd_number++;
			sum_odd += a[j];  //sum_odd = sum_odd + a[j]
		}
	}
	printf("%d\n",quantity_even_number);
	printf("%d\n",quantity_odd_number);
	printf("%d\n",sum_even);
	printf("%d\n",sum_odd);
	return 0;
}
```
kết thúc code ta thấy cũng khá ổn
