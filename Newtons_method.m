function [outputArg1] = Newtons_method(p)
eps = 0.001;
b = my_top(p);%???????? ??????? ???????
a = b;
s1 = sign(gorner(p,b));
s2 = s1;
while (s1 == s2)
    a = a - 0.5;
    s2 = sign(gorner(p,a));
end
x = (a + b)/2;
while (abs(gorner(p,x) / gorner(derivative(p),x)) >= eps)
    x = x - (gorner(p,x) / gorner(derivative(p),x));
end
x = int16(x);
outputArg1 = x;
end

