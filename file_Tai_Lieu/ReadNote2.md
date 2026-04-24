code matlad

b=5 lay so 5
who liệt kê các biến 
a1=1+1,a2=1+2; => a1 =2 vì dấu , là 2 lệnh riêng
clc xóa các lệnh
clear a xóa 1 biến 
a= 1+1; k hiển thị kết quả vì dấu ;
clear all xóa hết

help 

f1 sẽ hỗ trợ code đó
lookfor tìm kiếm 
muốn chữ hiện ra thì thêm lệnh s và dấu nháy đơn

cấu trúc lệnh input: 

fprintf("so vua nhap la: %2f n",a)

load("ten file") 

"-ascii" mã hóa
fopen("ten file")  : mở 1 file "w" là cho viết 

chương 3 ma trận 
khai báo vecto và mà trận
vecto hang
khai báo tự động: bắt đầu : bước nhảy(quy luật+) : kết thúc  vd 0:5:100 (điếm số từ 0 5 10 15 ... 100)
linspace( bắt đầu , kết thúc , số lượng) vd linspace(0,100,20)
logspace(a,b,n) (a=10^a,b=10^b,n=so luong mau) vd logspace(1,3,3)
vecto cot7]
rand( kích thước ma trận) vd rand(2,3) (2 hàng 3 cột) rand(2) (2 hàng và 2 cột) 
randi( tạo mt ngẫu nhiên là những số nguyên)  randi([0 10],2)   randi(5,3)
gọi tên mảng ( vị trí dữ liệu cần truy xuất ) 
x(:,[1 3]) 
x(1,1:2:4)
vd  A=[3 6 7;6 8 3]

A =

     3     6     7
     6     8     3

>> A(1,3)

ans =

     7

 c(:,2)
c(:,2:2:4)
...
size(A) (kịch thuoc ma tran )
transpose(X) chuyen vi ma chan hoac dau nhay '
A+B tinh toan ma tran 
A.*B (lay phan tu 1 A nhan phan tu 1 B)

vd
x(1:2:end) = x(1:2:end) +11
nhân hai ma trận A.*B A./B
X.^2 ( binh Phuong)
sum(A) (cong theo chieu doc)
sum(sum(A)) ( cong all)
min(A) ( tim gia tri nho nhat )
A>B ( tra ve gia tr logic 0 1 )
A<B ........
A==B ( so sanh )
dau & | 



ht~=' ' so sanh
function tao hamf


chương 5 đồ họa
b1
x=[xa xb]
y=[ya yb]
b2
figure ( tạo cửa sổ vẽ )
subplot ( m,n,p ) hang cot vi tri
b3 
hàm vẽ : plot( x,y ' DINH DANG') 
 
fill(x,y,mau ve ) ( r g b )






