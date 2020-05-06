function [out1, out2, out3] = cycle(p,i)
z = 1;
while Sht2(p,i-z,i) ~= 1
    z = z/2;
end
[out1,out2] = ffl3(p,i,z);
out3 = i-z;
end