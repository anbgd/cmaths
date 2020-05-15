function [out] = lab6n1 (value, interval, step)
	accuracy = 3;
	iteration = min(length(value), accuracy);
	start = interval(1);
	stop = interval(2);
	x = start:step:stop;
	table(:, 1) = value(:);
	for i = 2:iteration
        for j = 1:length(value) - i+1
        table(j, i) = -table(j, i-1) + table(j+1, i-1);
        end
    end
	for i = 1:length(value)-iteration
        result = 0;
        sign = 1;
        for j = 2:iteration
            result = result + (table(i, j)*sign) / (j-1);
            sign = sign*-1;      
        end
        der(i) = result/step;
    end
	[out] = der;
	plot(x, value,"r", x(1:length(x)-iteration), der, "g");    
end
