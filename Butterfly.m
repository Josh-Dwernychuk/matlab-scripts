function [] = Butterfly(t_min,t_max,t_step )
s=rand(1);
x0=0;
y0=0;
a=[];
b=[];
for i=[t_min:t_step:t_max]
    f=exp(cos(i))-2*cos(4*i)-sin(i/12)^5;
    x=x0+s*f*sin(i);
    y=y0+s*f*cos(i);
    a=horzcat(a,x);
    b=horzcat(b,y);
end
figure
plot(a,b)
end