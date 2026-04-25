VAI TRÒ MÔ HÌNH HÓA HỆ THỐNG
- Mô hình hóa hệ thống
+ PT toán học
+ hàm truyền
+ Hệ PTTT
-------------------------------------------------------------------

Chương 1:

matlap
k xuất hiện dấu nhấc lệnh--> CtrlC  
ans: câu tloi(biến tạm) -> hạn chế sdung  
không khai báo loại biến, ( tự Matlab biết)  
không cần khai báo kiểu dữ liệu   
không cần định dạng kiểu dữ liệu  
viết tiếp thì cần dùng ...(không dùng Shift+enter)  
6+3+4+...+5.6  
dùng dấu chấm phẩy tuy k hiển thị kq nhưng vẫn chạy lệnh và vùng làm việc vẫn hiện  
viết nhiều lệnh trên cùng 1 dòng, dùng dấu phẩy  
dùng lệnh Who để liệt kê danh sách lệnh...  
xóa lệnh dùng clear +tên biến  
clear a  
clear all  
exp(a) --> tính e mũ a  
lệnh help để tra lệnh hay đơn vị   
nhập lệnh sin --> nhấn F1 thì sẽ giải thích  
lệnh lookfor dùng để tìm kiêm 1 cụm từ khóa nào đó(không biết gì về lệnh đó)  
--> matlap tìm tất cả câu lệnh có chứa từ khóa bạn tìm kiếm  

lg cơ số 10 của 100  
tìm ln của 1 số  
log cơ số 10 của 1 số  
ln của 1 e  

-------------------------------------------------------------------

Chương 2: tính toán trong matlap  
-----
Hàm phép tính  
sqrt(x): căn bậc 2  
exp(x): hàm mũ cơ số e  
rem(x,y): tìm số dư của một phép chia  
	rem(3,2)  
mod(): ktra phần dư của một số  

-----
Hàm làm tròn:  
round(x): làm tròn số, về 1 số tự nhiên gần nhất  
ceil(x): làm tròn lên(vdu lớn hơn 2 thì làm tròn lên 3)  
floor(x): làm tròn xuống (lấy phần nguyên của số thập phân)  

BIẾN VÀ CÁC THAO TÁC CỦA BIẾN  
biến= chú giải  
biến bắt đầu bằng chữ(a1=2)  
không dùng ký tự đặt biệt(@#$)  
Phân biệt chữ Hoa và chữ Thường  
use hàm 'isvarname' để kiểm tra tính hợp lệ của biến  
	1=hợp lệ và 0=k hợp lệ  
Tránh đặt tên biến trùng với tên hàm chuẩn  
inf: vô cùng  
NaN: Not a number  

-----
Hàm số phức  
complex: tạo ra số phức có phần thực và phần ảo  
	z=complex(1,-1)  
real(z): phần thực  
imag(z): phần ảo   
abs(z): tính module của phần thực và phần ảo  
angle(z): tính góc pha argument của số phức, radian  
	angle(z)*180/pi  
rad2deg: đổi từ radian sang độ  

ĐỊNH DẠNG KẾT QUẢ TRỞ VỀ  
format: cho phép chuyển đổi kiểu hiển thị ra màn hình  
	format short: cho phép hiển thị 5 số  
	format long: cho phép hiển thị 15 số  
	format long e/short e: e.1416e+00  
khi gọi tên, có hiệu lực đến khi nó được thay đổi  
muốn thay đổi, phải gọi theo kiểu định dạng  
format rat: định dạng cách hiển thị dạng phân số  

------
NHẬP VÀ XUẤT DỮ LIỆU  
TỪ BÀN PHÍM
input('...') 
b=input('nhap ten cua ban','s')-->thuc hien chuỗi
	c=input('nhap ten cua ban,)
	'nhap ten'
Xuất dữ liệu
disp('Xin chao')-->cho phep hien thi không có kiểu định dạng
fprintf('Tuoi cua ban la: %d', tuoi)-->hiển thị kiểu định dạng ra màn hình
%d: matlap lấy biến tuổi gán vào %d
%f\n
%2f\n

------
chú thích %: ctrl+R
save bt ch
load('bt.mat')
save bt.txt a '-ascii': tất cả dữ liệu trong file sẽ được mã hóa
IN DỮ LIỆU VÀO FILE THEO KIỂU ĐỊNH DẠNG MONG MUỐN
matlap mở 1 file ra fopen
fopen('bt1.txt')
fprintf(fopen('baitap.txt','w'),'%d',a) số nguyên
fprintf(fopen('baitap.txt','w'),'%f',a) số thực
mở file mới, ở dạng file viết, viết a

-------------------------------------------------------------------

CHƯƠNG 3: MA TRẬN

Khai báo vecto hàng: đc cách nhau dấu phẩy hoặc khoảng trống
 x=[8 9 10], x=7,8,9]
Khai báo trực tiếp
Khai báo tự động: 
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

THAO TÁC TRÊN WEB VÀ MA TRẬN
size(x): trả về kích thước của ma trận(số hàng và số cột)
length(x): tìm kiếm chiều dài của vecto x (Kích thước của vecto 	

TÍNH TOÁN VỚI VECTO VÀ MA TRẬN
TẠO VECTO HÀNG--> CHUYỂN VỊ-->CHUYỂN HÀNG THÀNH CỘT
y=x'(dùng dấu nháy để chuyển từ hàng thành cột
transpose(x): lệnh để chuyển từ cột thành hàng
NHÂN MA TRẬN
A+B
A-B
A*B
NHÂN TỪNG PHẦN TỬ: A.*B(cùng kích thước)
A11*B11, A12*B12,....
A./B(A11/B11, A12*/B12,....

format rat: hiển thị phân số
X3.^2: thêm dấu chấm trc pt để dùng hàm mũ

TÌM GIÁ TRỊ LỚN NHẤT, NHỎ NHẤT:Thao tác theo cột(cột 11+cột 12)
sum(A): 
sum(sum(A): cho phép tính tổng các phần tử của A
min(A): tìm phần tử bé nhất trên mảng A

CÁC PHÉP TOÁN QUAN HỆ VÀ LOGIC
ĐÚNG LÀ TRẢ VỀ 1, SAI LÀ 0(LOGIC)
2>0--> đúng-->trả về 1(sai trả về 0)
A>2: lấy từng pt của mảng A so sánh với 2
so sánh bằng nhau, không bằng: ==,~=
và(&), hoặc(|), không(~)

any()tìm trong ma trận A có bất kì ptu nào có gtri bằng 0 hay không
Thao tác trên các cột, tìm trên mảng A khác 0-->trả về 1
all(A): tìm trên mảng A, mỗi cột có khác 0 hay k
có 1 pt khác 0, 1 pt bằng 0--> trả về 0
find(A): tìm theo dk logic,
find(A>4):tìm trong mảng A các pt lớn hơn 4,
trả về vị trí của pt thõa mãn dk logic ở bên trong.
không trả về số, trả về chỉ số, vị trí (các đánh chỉ số(theo cột)
exist(a): ktr mảng a, nếu có-->1, không->0
isempty(A): trả về mảng có giá trị hay mảng rỗng

-------------------------------------------------------------------

Chương 5: đồ họa trong matlab
Các bước để vẽ hàm
b1: chuẩn bị dữ liệu
x=[xA xB]
y=[yA yB]
kích thước của vecto hoành độ và tung độ bằng nhau
b2: chọn cửa sổ vẽ và vùng vẽ
k chọn cửa sổ vẽ -> tạo ra cửa sổ mới (tạm)
	figure: tạo 1 cửa sổ vẽ mới
	subplot: chia 1 cửa sổ thành nhiều vị trí khác nhau
	subplot(m,n,p) m: hàng, n: cột, p:vị trí vẽ
b3: gọi hàm vẽ: plot(x,y)
	>> t=linspace(0,2*pi,100);
	>> plot(t,sin(t))
	>> subplot(2,1,1)
	>> subplot(2,1,1)
	>> plot(t,sin(t))
	>> subplot(2,1,2)
	>> plot(t,cos(t))
	>> plot(t,2*sin(t))

	plot(x,y,'định dạng đồ thị'):
	Định dạng: nét vẽ, màu sắc, điểm
y: vèi bằng nét liền -
m: bẽ bằng nét đức dài --
	>> plot(t,2*sin(t),'r--')

hold on: cho phép vẽ cùng lúc nhiều đồ thị trên 1 cửa sổ vẽ
	>> xlabel('Truc x')

b4-b6: tính chỉnh đồ thị
	>> xlabel('Truc x')
legend('tên')
	>> legend('sin(t)','2cos(t)')
axis([xmin xmax ymin ymax]): cấu trúc điều chỉnh độ dài trục
	>> axis([0 10 -2 2])
	axis equal: chia 1 đơn vị trên trục x và 1 đơn vị trên trục y bằng nhau
text(vị trí,'text')
gtext('day la vi tri diem A'): thêm 1 điểm trực tiếp trên đồ thị, chỉ bằng con chuột
	>> gtext('Toa do diem A'): đưa vào bằng con chuột
	>> text(1,3,'Toa do diem B'): chỉ đúng vị trí cần đưa vào,
		theo x,y

tô màu trong matlab
fill(x,y,'màu vẽ')
'màu vẽ': 'r', 
1 0 0
R G B(100% red,...)
fill(x,y,[0 1 0]) 

-------------------------------------------------------------------













x=[0 4 4 0 0];
y=[0 0 4 4 0];
plot(x,y)
axis([-10 10 -5 5])
axis equal
% 
% x=e^(-2t)sin(t) 
% t=0:0.01:4;
% x = exp(-2*t).*sin(t);
% plot(t,x)
% hold on


% 1. Khai báo tọa độ tâm và bán kính
x_c = 0; % Tọa độ X của tâm
y_c = 0; % Tọa độ Y của tâm
R = 2;   % Bán kính hình tròn

% 2. Tạo một mảng các góc t từ 0 đến 2*pi (tương đương 360 độ)
t = 0:0.01:2*pi; 

% 3. Tính toán tọa độ x và y theo phương trình tham số
x = x_c + R * cos(t);
y = y_c + R * sin(t);

% 4. Vẽ đồ thị
plot(x, y, 'b-', 'LineWidth', 2) 

% 5. Căn chỉnh tỷ lệ trục (RẤT QUAN TRỌNG)
axis([-10 10 -5 5])
axis equal 

% Tùy chỉnh thêm cho đồ thị đẹp hơn
grid on % Bật lưới
title('Hình tròn tâm (0,0), bán kính R=2')
xlabel('Trục X')
ylabel('Trục Y')


% BÀI 1: Vẽ đường bằng nét gạch ngắn màu đỏ nối các điểm
% figure(1);
% Khai báo tọa độ x và y của các điểm
% x1 = [2, 2.5, 5, 4.2, 2];
% y1 = [6, 18, 17.5, 12.5, 12];
% 
% Lệnh plot vẽ đồ thị. 'r--' nghĩa là màu đỏ (red) và nét gạch đứt (dashed)
% plot(x1, y1, 'r--', 'LineWidth', 1.5); 
% Thêm Marker 'o' để dễ nhìn các điểm nút, 
% axis([-20 20 -20 20])
% title('Bài 1: Đồ thị nối các điểm');
% xlabel('Trục x');
% ylabel('Trục y');
% grid on;
% 
% BÀI 2: Vẽ đường tròn bán kính r=2
% figure(2);
% r = 2;
% Tạo mảng giá trị t từ 0 đến 2*pi, lấy 100 điểm cho đường tròn mịn
% t = linspace(0, 2*pi, 100); 
% 
% Phương trình tham số của đường tròn
% x2 = r * cos(t);
% y2 = r * sin(t);
% 
% plot(x2, y2, 'b-', 'LineWidth', 1.5);
% axis([-10 10 -5 5])
% axis equal; % Lệnh này rất quan trọng để đảm bảo đường tròn không bị méo thành elip
% title('Bài 2: Đường tròn bán kính r = 2');
% xlabel('Trục x');
% ylabel('Trục y');
% grid on;
% 
% BÀI 3: Vẽ đồ thị sin(n*pi*x) với n = 1, 2... 8
% figure(3);
% Tạo mảng giá trị x từ -1 đến 1
% x3 = linspace(-1, 1, 1000); 
% 
% hold on; % Giữ đồ thị để vẽ chồng nhiều đường lên nhau
% colors = lines(8); % Tạo một mảng 8 màu tự động để phân biệt các đường
% 
% for n = 1:8
%     y3 = sin(n * pi * x3);
%     Vẽ từng đường với màu khác nhau và đặt tên để hiển thị chú thích (legend)
%     plot(x3, y3, 'Color', colors(n,:), 'LineWidth', 1.2, 'DisplayName', ['n = ', num2str(n)]);
% end
% hold off;
% 
% title('Bài 3: Đồ thị y = \sin(n\pi x)');
% xlabel('Trục x');
% ylabel('Trục y');
% legend('show'); % Hiển thị chú giải để biết đường nào ứng với n bằng bao nhiêu
% grid on;

% --- KHAI BÁO CÁC THÔNG SỐ BAN ĐẦU ---
AB = 0.5;       % Chiều dài tay quay 1 (m)
BC = 1.0;       % Chiều dài thanh truyền 2 (m)
phi = 45;       % Góc của khâu 1 so với phương ngang (độ)

% --- 1. TÍNH TOÁN VỊ TRÍ KHỚP B ---
% Sử dụng hàm cosd và sind để tính toán trực tiếp với góc theo độ
xB = AB * cosd(phi);
yB = AB * sind(phi);

% --- 2. TÍNH TOÁN VỊ TRÍ KHỚP C ---
% Con trượt C di chuyển trên phương ngang nên tung độ bằng 0
yC = 0;

% Chiều dài khâu 2: BC^2 = (xC - xB)^2 + (yC - yB)^2
% Vì C nằm bên phải B trên hình vẽ, ta lấy nghiệm dương: xC = xB + sqrt(BC^2 - yB^2)
xC = xB + sqrt(BC^2 - yB^2);

% --- 3. TÍNH GÓC CỦA KHÂU 2 ---
% Góc theta2 tạo bởi khâu 2 và phương ngang
% sin(theta2) = (yC - yB) / BC
theta2 = asind((yC - yB) / BC);

% --- HIỂN THỊ KẾT QUẢ ---
fprintf('--- KẾT QUẢ BÀI TOÁN ĐỘNG HỌC ---\n');
fprintf('1. Vị trí khớp B: B(%.3f, %.3f) m\n', xB, yB);
fprintf('2. Vị trí khớp C: C(%.3f, %.3f) m\n', xC, yC);
fprintf('3. Góc tạo bởi khâu 2 và phương ngang: %.2f độ\n', theta2);






