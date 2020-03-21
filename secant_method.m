function [outputArg1] = secant_method(p)
eps = 0.001;
b = my_top(p);%???????? ??????? ???????
a = b;
s1 = sign(gorner(p,b));
s2 = s1;
while (s1 == s2)
    a = a - 0.5;
    s2 = sign(gorner(p,a));
end
while (abs(b-a) > eps) && (a ~= b)
    a = b - (b - a) * gorner(p,b) / (gorner(p,b) - gorner(p,a));
    if (a ~= b)
        b = a + (a - b) * gorner(p,a) / (gorner(p,a) - gorner(p,b));
    end
end
outputArg1 = b;
end