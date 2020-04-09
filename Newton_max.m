function [out] = Newton_max(p)
p = p*sign(p(1));
while (p(end) == 0)
    p(end) = [];
end
s = p;
d = cell(1, length(p)-1);
for i = 1:(length(p)-1)
    d{1,i} = derivative(s);
    s = derivative(s);
end
k = -1;
flag = 1;
while (flag == 1)
    flag = 0;
    k = k + 1;
    for i = 1:(length(p)-1)
        if (gorner(d{1,i},k) < 0)
            flag = 1;
        end
    end    
end
while (gorner(p,k) < 0)
    k = k + 1;
end
out = k;
end

