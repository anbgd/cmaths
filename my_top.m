function [outputArg1] = my_top(p)
a=0;
flag=1;
while (flag == 1)
  sum=0;
  a = a + 1;
  flag = 0;
  if (p(1) <= 0)
   flag = 1;
  end
  for i=1:length(p)
    sum = sum*a;
    sum = sum + p(i);
    if (sum < 0)
      flag = 1;
    end
  end
end
outputArg1 = a;
end

