function str_out = xoa_khoang_trangs(str_input_dau)
    str_in = in_hoa_chu_cai_dau(str_input_dau)
    str_out = []; %khoi tao
    temp = 0;
    for i = 1:length(str_in) %kich thuoc
        if str_in(i) == ' '
            temp = temp+1;
        else
            if temp >= 2
                str_out = [str_out,' '];
                temp = 0;
            end
            str_out = [str_out, str_in(i)];
        end
    end
end