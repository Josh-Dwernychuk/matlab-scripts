function [out] = anagram(a)
b=zeros(1,length(a));
for i = 1:length(a)
    c=1;
    while c==1
        z = randi(length(a));
        if b(z)==0
            b(z)=a(i);
            c=0;
        end
    end   
end
out=char(b);
end