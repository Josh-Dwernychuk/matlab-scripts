function [out] = crypt(a)
if isempty(a)==1
    b=a;
else
    k=1;
    while a(k)==' '
        k=k+1;
    end
    b=a(k);
    for i = 1:length(a)
        if a(i) == ' '
            b=horzcat(b,a(i+1));
        end
    end
end
out=b;
end