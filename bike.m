function [  ] = bike(lat1,lon1,lat2,lon2,WA_topo)
[i1,j1]=latlon(lat1,lon1);
[i2,j2]=latlon(lat2,lon2);
vector=WA_topo(i1:i2,j1:j2);
d=0.00833333334;
n=length(vector);
a=max(vector);
disp(a);
average_total=sum(vector)/n;
disp(average_total);

average(1)=vector(1);
latitude(1)=lat1;
for i=1:(n-1)
    average(i+1)=average(i)+(1/(1+i))*(vector(i+1)-average(i));

    
end
for i=2:n
    latitude(i)=lat1+i*d;
end
figure
subplot(1,2,1);
plot(latitude,vector,'r-');
axis tight;
ylabel('Altitude');
xlabel('Latitude');
title('Altitude vs. Latitude');
subplot(1,2,2);
plot(latitude,average,'b--');
axis tight;
ylabel('Running Average Altitude');
xlabel('Latitude');
title('Running Average Altitude vs. Latitude');

end