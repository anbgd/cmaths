function [out] = m_sz(mat,number)
    [a,b] = size(mat);
    if number == 1
        out = a;
    else
        out = b;
    end
end