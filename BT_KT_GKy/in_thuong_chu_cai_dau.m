function str_out = in_thuong_chu_cai_dau(str_in)
    str_out = []; %khoi tao
    if str_in(1) ~= ' ' && str_in(1) >= double('A') && str_in(1) <= double('Z')
        str_out = [str_out, str_in(1)+32];
    else
        str_out = [str_out, str_in(1)];
    end
    for i = 1:length(str_in)-1 %kich thuoc
        if (str_in(i) == ' ') && (str_in(i+1) >= double('A')) && (str_in(i+1) <= double('Z'))
            str_out = [str_out, str_in(i+1)+32];
        else
            str_out = [str_out, str_in(i+1)];
        end
    end
end