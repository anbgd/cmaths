function [out] = der2y(p)
[m,n] = size(p);
dery = zeros(m-1,n);
for i = 1:m
    stl = p(:,i);    
    dery(:,i) = derivative(stl);
end
out = dery;
end