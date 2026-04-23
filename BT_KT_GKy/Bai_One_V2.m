%% Bài 1: Tạo ma trận A ngẫu nhiên 10x3
% Cột 1 (L): [2, 8], Cột 2 (W): [5, 15], Cột 3 (M): [50, 100]
A = [rand(10,1)*6 + 2, rand(10,1)*10 + 5, rand(10,1)*50 + 50];

% Phân loại:
% Loại A: L∈[3,7],  W∈[6,12],  M∈[60,90]
% Loại B: L∈[2.5,7.5], W∈[5.5,14], M∈[55,95]  (không thuộc A)
% Loại C: Còn lại

L = A(:,1); W = A(:,2); M = A(:,3);

idxA = (L>=3 & L<=7)   & (W>=6  & W<=12)  & (M>=60 & M<=90);
idxB = (L>=2.5 & L<=7.5) & (W>=5.5 & W<=14) & (M>=55 & M<=95) & ~idxA;
idxC = ~idxA & ~idxB;

%% a) Khởi tạo ma trận A_A, A_B, A_C
A_A = A(idxA, :)
A_B = A(idxB, :)
A_C = A(idxC, :)

%% b) In danh sách sản phẩm loại B (C) theo mẫu
% ---- In loại B ----
fprintf('Danh sach san pham loai B:\n');
fprintf('**********\n');
fprintf('STT\tL\tW\tM\n');
rows_B = find(idxB);
for i = 1:length(rows_B)
    fprintf('%d\t%.2f\t%.2f\t%.2f\n', i, A(rows_B(i),1), A(rows_B(i),2), A(rows_B(i),3));
end
fprintf('...\n');

% ---- In loại C ----
fprintf('\nDanh sach san pham loai C:\n');
fprintf('**********\n');
fprintf('STT\tL\tW\tM\n');
rows_C = find(idxC);
for i = 1:length(rows_C)
    fprintf('%d\t%.2f\t%.2f\t%.2f\n', i, A(rows_C(i),1), A(rows_C(i),2), A(rows_C(i),3));
end

%% c) Tìm sản phẩm có khối lượng M lớn nhất và bé nhất
[maxM, idxMax] = max(M);
[minM, idxMin] = min(M);

fprintf('\nSan pham co khoi luong lon nhat:\n');
fprintf('L= %.2f, W= %.2f, M= %.2f\n', A(idxMax,1), A(idxMax,2), A(idxMax,3));

fprintf('San pham co khoi luong nho nhat:\n');
fprintf('L= %.2f, W= %.2f, M= %.2f\n', A(idxMin,1), A(idxMin,2), A(idxMin,3));