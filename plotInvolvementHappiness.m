function [] = plotInvolvementHappiness(rankings)
%Displays scatter plot of student happiness with university
%versus student involvement with campus life

%Create scatterplot with happiness data as y axis and involvement data as x
%axis
a=rankings(:,1);
b=rankings(:,2);
figure
scatter(b,a);
title('CU Campus');
xlabel('Involvement');
ylabel('Happiness');

% polyfit and polyval functions
% Try multiple power fits in the code and then run
% nested if statements to determine which fit has the highest r squared
% value. Then take the equation of that fit and use that equation to input
% the value and get the output

end
