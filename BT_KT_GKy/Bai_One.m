% x = input('nhap gia tri x: ')
% y = input('nhap gia tri y: ')
x = [1 2 3 4 5];
y = [5 6 7 8 9];
m = length(x)
n = length(y)
%Tao Ma tran---------------
for i = 1:m
    for j = 1:n
        G(i,j) = x(i)*y(j)+x(i)-y(j);
    end
end
%Cau a
G
Cy1 = G;
Cy1(mod(Cy1, 2) == 0) = 2       %y1
Cy2 = Cy1;
Cy2(mod(Cy2, 2) == 1) = -1  %y2 kiem tra so le
Cy3 = Cy1;
Cy3(mod(Cy3, 3) == 0) = -1  %y3 kiem tra chia het 3
C((Cy2  Cy3) == -1) = -1
