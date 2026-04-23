function ket_qua = xu_ly_chuoi(s)
    s = strtrim(s);
    s = regexprep(s, '\s+', ' ');
    
    ascii_vals = double(s);
    if ascii_vals(1) >= 97 && ascii_vals(1) <= 122
        ascii_vals(1) = ascii_vals(1) - 32;
    end
    
    ket_qua = char(ascii_vals);
end
