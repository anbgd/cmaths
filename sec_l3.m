function [outputArg1] = sec_l3(p,b,a)
eps = 0.0001;
while (abs(b-a) > eps) && (a ~= b)
    a = b - (b - a) * gorner(p,b) / (gorner(p,b) - gorner(p,a));
    if (a ~= b)
        b = a + (a - b) * gorner(p,a) / (gorner(p,a) - gorner(p,b));
    end
end
outputArg1 = b;
end