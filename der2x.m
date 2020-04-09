function [out] = der2x(p)
[m,n] = size(p);
derx = zeros(m,n-1);
for i = 1:n
    str = p(i,:);    
    derx(i,:) = derivative(str);
end
out = derx;
end