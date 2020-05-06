function [out1, out2] = ffl3 (p,i,z)
out1 = [i-z,i];
out2 = dih(p,i-z,i);
end
