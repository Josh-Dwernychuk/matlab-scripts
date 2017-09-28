function [out] = isPalindrome(a)
a=lower(a);
b=[];
c=ones(1,length(a));
for i = 1:length(a)
    j=length(a)-i+1;
    if a(i)==a(j)
        x=1;
        b=horzcat(b,x);
    else
        x=0;
        b=horzcat(b,x);
    end
end
out=isequal(b,c);
end