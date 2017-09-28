function [ out ] = count_vowels(word)
i=0;
x=0;

for i=1:length(word)
    if word(i)=='a' || word(i)=='e' || word(i)=='i' || word(i)=='o' || word(i)== 'u'
        x=x+1;
    end
end
out=x;
end

