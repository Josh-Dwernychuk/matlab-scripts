function [out] = remvow(a)
a2=lower(a);
b=[];
for i = 1:length(a)
    if a2(i) ~= 'i' && a2(i) ~= 'a' && a2(i) ~= 'e' && a2(i) ~= 'o' && a2(i) ~= 'u'
        b=horzcat(b,a(i));
    end
end
out=b;
end