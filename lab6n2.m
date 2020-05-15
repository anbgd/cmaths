function [out] = lab6n2(func, interval, step)
    start = interval(1);
    stop = interval(2);
    sum_odd = 0;
    sum_even = 0;
    j = 0;
    y_0 = func(start);
    y_n = func(stop);
    start = start + step;
    for i = start:step:stop-step
        if mod(j,2) == 0
            sum_odd = sum_odd + func(i);
        else
            sum_even = sum_even + func(i);
        end
        j = j + 1;
    end
    out = step*(y_n + y_0 + sum_odd*4 + sum_even*2)/3;
end