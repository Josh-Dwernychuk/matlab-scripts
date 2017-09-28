%Joshua Dwernychuk, 101427001
%Michael Giebler, 103626392


function [matrix] = rankUser(b,c,rankings)
%This function compares the user to other university students
%It outputs where the user stands in regard to happiness and involvement in
%a percentile format with the entire campus of students
%Stores happiness and involvement arrays
m=rankings(:,1);
n=rankings(:,2);
u=100;
v=100;
%initializes indicies
mIndexU = 0;
mIndexV = 0;
%loops through percentile values
for i=[0:.1:100]
    x=prctile(m,i);
    y=prctile(n,i);
    %finds minimum percentile difference from entered value and references
    %that index for the percentile
    if u >= min(abs(b-x))
        u = min(abs(b-x));
        mIndexU = i;
    end
    if v >= min(abs(c-y))
        v = min(abs(c-y));
        mIndexV = i;
    end
        
end

uf=mIndexU;
vf=mIndexV;

%Outputs percentile rankings with text
a=['According to the 2015 Michael Giebler campus survey projection:              '];
b=['You are on the ',num2str(uf),'th percentile of all CU students in Happiness  '];
c=['You are on the ',num2str(vf),'th percentile of all CU students in Involvement'];

disp(a);
disp(b);
disp(c);
matrix=[a, b, c];
% Find percentile Equation:
% R(input number for happiness or involvement position in other values ranked from lowest to highest)=(P(Percentile)/100)(N(number of data values)+1)
% Run equation on all of the data points and on all of the data points that
% correspond with specific field of study
% Percentile= Position of input in the list/(total numbers in the list
% including the input +1)*100

end

