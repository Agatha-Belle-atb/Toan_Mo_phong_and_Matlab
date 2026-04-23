function [str_output] = thuong_to_hoas(str_input)
    str_output = []; %khoi tao
    for i = 1:length(str_input) %kich thuoc
        if (str_input(i)>=97 && str_input(i)<=122) %kiem tra chu thuong
            str_output = [str_output, str_input(i)-32]; %chuyen thanh chu hoa
        elseif str_input(i) ~= ' '
            str_output = [str_output, str_input(i)];
        end
    end
end