function [outputArg1] = N_l3(p,a,b)
x = (a + b)/2;
while (abs(gorner(p,x) / gorner(derivative(p),x)) >= eps)
    x = x - (gorner(p,x) / gorner(derivative(p),x));
end
outputArg1 = x;
end