function [outputArg1] = gor2(p,x,y)
[~, width] = size(p);
ind= zeros(1, width);
for i = 1:width
    ind(i) = gorner(p(:,i), y);
end
outputArg1 = gorner(ind, x);
end