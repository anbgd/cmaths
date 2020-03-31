function der2(p)
[m,n] = size(p);
derx = zeros(m,n-1);
dery = zeros(m-1,n);
for i = 1:n
    str = p(i,:);    
    derx(i,:) = derivative(str);
end
for i = 1:m
    stl = p(:,i);    
    dery(:,i) = derivative(stl);
end
derx
dery
end