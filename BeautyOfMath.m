function [] = BeautyOfMath(int)
b=[];
for i=1:int
    b=horzcat(b,i);
    n=0;
    for k=1:length(b)
        m=length(b)-k;
        n=n+b(k)*10^m;
    end
    j=n*8+i;
    z=[num2str(n),' x ', '8 + ', num2str(i), ' = ', num2str(j)];
    disp(z);
    end
end