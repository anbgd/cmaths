function [out] = b_matr(p1,p2)
[m1,n1] = size(p1);
[m2,n2] = size(p2);
if (m1 == 1)||(n1 == 1)||(m2 == 1)||(n2 == 1)
    p3 = p1*p2;
else    
    A1 = p1(1,1);
    A2 = p2(1,1);
    B1 = p1(1,:);
    B1(1) = [];
    B2 = p2(1,:);
    B2(1) = [];
    C1 = p1(:,1);
    C1(1) = [];
    C2 = p2(:,1);
    C2(1) = [];
    D1 = p1(2:m1,2:n1);
    D2 = p2(2:m2,2:n2);
    A3 = b_matr(A1,A2)+b_matr(B1,C2);
    B3 = b_matr(A1,B2)+b_matr(B1,D2);
    C3 = b_matr(C1,A2)+b_matr(D1,C2);
    D3 = b_matr(C1,B2)+b_matr(D1,D2);
    p3 = [ A3 B3; C3 D3];
end
out = p3;
end