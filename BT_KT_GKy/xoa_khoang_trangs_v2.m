clear all;
x = input('Nhap vector x: '); 
y = input('Nhap vector y: '); 
 
m = length(x);
n = length(y);
C = zeros(m, n);
for i = 1:m
    for j = 1:n
        C(i,j) = x(i)*y(j) + x(i) - y(j);
    end
end
 
fprintf('Ma tran C sau khi khoi tao:\n');
disp(C);
 
%% a) Bien doi ma tran C theo yêu cau
for i = 1:m
    for j = 1:n
        val = C(i,j); 
        if mod(val, 3) == 0 && mod(val, 2) ~= 0
            C(i,j) = -1;
        elseif mod(val, 2) == 0
            C(i,j) = 2;
        end
    end
end
 
fprintf('Ma tran C sau khi bien doi\n');
disp(C);
 
%% b) Tính toán trên ma tran da bien doi
tong_hang = sum(C, 2); 
[max_val, idx_max] = max(tong_hang);
[min_val, idx_min] = min(tong_hang);
 
fprintf('Tong tang hang: '); disp(tong_hang');
fprintf('hang co tong lon nhat la hang %d (Tong = %d)\n', idx_max, max_val);
S = sum(C > 0, 2);
fprintf('Vector S : '); disp(S');
 
%% c) 
so_luong_2 = sum(C(:) == 2);
so_luong_am1 = sum(C(:) >= 0);
 
fprintf('So phan tu bang 2: %d\n', so_luong_2);
fprintf('So phan tu duong>0: %d\n', so_luong_am1);
