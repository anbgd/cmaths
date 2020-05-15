function [out] = LeVerrier(p)
ar=[];
p1=p;
s=[];
l=size(p);
for j = 1 :l(1)
    s(j)=0;
    for i=1:l(1)
        s(j)=s(j)+p(i,i);
    end
    p=p*p1;
end
ar(1)=-s(1);
k=1;
for i = 2 :l(1)
	k1=k/i;
	a=0;
    for j = 1 : i-1
    	u=ar(j)*s(i-j);
    	a=a+u;
    end
	ar(i)=-k1*(s(i)+a);
end  
out=[1 ar]; 
end