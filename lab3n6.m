function [out1, out2] = lab3n6 (p)
min = my_bot(p);
max = my_top(p);
n = Shturm(p);
val = zeros(n,1);
interval = zeros(n,2);
k = 1; 
for i = max:-1:min-1
    s = Sht2(p,i-1,i);
    if s == 1
        [interval(k,:), val(k)] = ffl3(p,i,1);
        k = k + 1;
    else
        if s > 1
            i2 = i;
            for j=1:s
                [interval(k,:), val(k), i2] = cycle(p,i2);
                k = k + 1;
            end
        end
    end
end
out1 = val;
out2 = interval;
end
            
            
            