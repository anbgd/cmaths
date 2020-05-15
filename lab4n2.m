function [out] = lab4n2 (matrix1)
	len = length(matrix1);
    if (abs(det(matrix1)) < 0.001)
        out = "Does not exist";
        return
    else
        matrix1(1,1) = 1/matrix1(1,1);
        a1_1 = matrix1(1,1);
        for i = 1:len-1
            a2_1 = matrix1(i+1,1:i);
            a1_2 = matrix1(1:i,i+1);
            a2_2 = matrix1(i+1,i+1);
            X = a1_1*a1_2;
            Y = a2_1*a1_1;
            U = a2_2 - Y*a1_2;
            a1_1 = [a1_1 + X*(1/U)*Y, -X*(1/U);-(1/U)*Y, 1/U];
        end
    end
    out = a1_1;     
end
