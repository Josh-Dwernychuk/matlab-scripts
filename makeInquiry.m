%Joshua Dwernychuk, 101427001
%Michael Giebler, 103626392


function [ matrix ] = makeInquiry(a,names,rankings)
%This function allows the user to make inquiries about specific fields of
%study and outputs diagrams displaying the collected happiness and
%involvement data for the inquired field

%Output scatter plot of data points that correspond to the field
%inquired about
%indexes for the field related to the input

if strcmp(a,'engineering')==1
    %initializes values
    [j,k]=size(names);
    EH=[];
    EI=[];
    Ecount=0;
    %Builds vector of all values corresponding to input field
    for i = 1:j
        if strcmp(deblank(names(i,:)),'engineering')==1
            EH=horzcat(EH,rankings(i,1));
            EI=horzcat(EI,rankings(i,2));
            Ecount=Ecount+1;
        end
    end
    %averages the vectors attained
EHaverage=sum(EH)/Ecount;
EIaverage=sum(EI)/Ecount;
%builds array of both averages
y=[EHaverage,EIaverage];
%creates output text
b1=['The average happiness rating within the engineering field is ', num2str(EHaverage),' out of 10.    ']
b2=['The average involvement rating within the engineering field is ', num2str(EIaverage),' out of 10.']
%displays output text
disp(b1);
disp(b2);
%initializes f and g
f=[];
g=[];
%creates not specific to major data of whole campus for alternative plot
%output
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'business')==1
    [j,k]=size(names);
    BH=[];
    BI=[];
    Bcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'business')==1
            BH=horzcat(BH,rankings(i,1));
            BI=horzcat(BI,rankings(i,2));
            Bcount=Bcount+1;
        end
    end
BHaverage=sum(BH)/Bcount;
BIaverage=sum(BI)/Bcount;
y=[BHaverage,BIaverage];
b1=['The average happiness rating within the business field is ', num2str(BHaverage),' out of 10.  '];
b2=['The average involvement rating within the business field is ', num2str(BIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end

if strcmp(a,'film')==1
    [j,k]=size(names);
    FH=[];
    FI=[];
    Fcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'film')==1
            FH=horzcat(FH,rankings(i,1));
            FI=horzcat(FI,rankings(i,2));
            Fcount=Fcount+1;
        end
    end
FHaverage=sum(FH)/Fcount;
FIaverage=sum(FI)/Fcount;
y=[FHaverage,FIaverage];
b1=['The average happiness rating within the film field is ', num2str(FHaverage),' out of 10.  '];
b2=['The average involvement rating within the film field is ', num2str(FIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end

if strcmp(a,'psychology')==1
    [j,k]=size(names);
    PH=[];
    PI=[];
    Pcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'psychology')==1
            PH=horzcat(PH,rankings(i,1));
            PI=horzcat(PI,rankings(i,2));
            Pcount=Pcount+1;
        end
    end
PHaverage=sum(PH)/Pcount;
PIaverage=sum(PI)/Pcount;
y=[PHaverage,PIaverage];
b1=['The average happiness rating within the psychology field is ', num2str(PHaverage),' out of 10.  '];
b2=['The average involvement rating within the psychology field is ', num2str(PIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end

if strcmp(a,'geology')==1
    [j,k]=size(names);
    GH=[];
    GI=[];
    Gcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'geology')==1
            GH=horzcat(GH,rankings(i,1));
            GI=horzcat(GI,rankings(i,2));
            Gcount=Gcount+1;
        end
    end
GHaverage=sum(GH)/Gcount;
GIaverage=sum(GI)/Gcount;
y=[GHaverage,GIaverage];
b1=['The average happiness rating within the geology field is ', num2str(GHaverage),' out of 10.  '];
b2=['The average involvement rating within the geology field is ', num2str(GIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'education')==1
    [j,k]=size(names);
    EDH=[];
    EDI=[];
    EDcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'education')==1
            EDH=horzcat(EDH,rankings(i,1));
            EDI=horzcat(EDI,rankings(i,2));
            EDcount=EDcount+1;
        end
    end
EDHaverage=sum(EDH)/EDcount;
EDIaverage=sum(EDI)/EDcount;
y=[EDHaverage,EDIaverage];
b1=['The average happiness rating within the education field is ', num2str(EDHaverage),' out of 10.  '];
b2=['The average involvement rating within the education field is ', num2str(EDIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'biology')==1
    [j,k]=size(names);
    BIH=[];
    BII=[];
    BIcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'biology')==1
            BIH=horzcat(BIH,rankings(i,1));
            BII=horzcat(BII,rankings(i,2));
            BIcount=BIcount+1;
        end
    end
BIHaverage=sum(BIH)/BIcount;
BIIaverage=sum(BII)/BIcount;
y=[BIHaverage,BIIaverage];
b1=['The average happiness rating within the biology field is ', num2str(BIHaverage),' out of 10.  '];
b2=['The average involvement rating within the biology field is ', num2str(BIIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'physiology')==1
    [j,k]=size(names);
    PHH=[];
    PHI=[];
    PHcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'physiology')==1
            PHH=horzcat(PHH,rankings(i,1));
            PHI=horzcat(PHI,rankings(i,2));
            PHcount=PHcount+1;
        end
    end
PHHaverage=sum(PHH)/PHcount;
PHIaverage=sum(PHI)/PHcount;
y=[PHHaverage,PHIaverage];
b1=['The average happiness rating within the physiology field is ', num2str(PHHaverage),' out of 10.  '];
b2=['The average involvement rating within the physiology field is ', num2str(PHIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'mathematics')==1
    [j,k]=size(names);
    MH=[];
    MI=[];
    Mcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'mathematics')==1
            MH=horzcat(MH,rankings(i,1));
            MI=horzcat(MI,rankings(i,2));
            Mcount=Mcount+1;
        end
    end
MHaverage=sum(MH)/Mcount;
MIaverage=sum(MI)/Mcount;
y=[MHaverage,MIaverage];
b1=['The average happiness rating within the mathematics field is ', num2str(MHaverage),' out of 10.  '];
b2=['The average involvement rating within the mathematics field is ', num2str(MIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end


if strcmp(a,'linguistics')==1
    [j,k]=size(names);
    LH=[];
    LI=[];
    Lcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'linguistics')==1
            LH=horzcat(LH,rankings(i,1));
            LI=horzcat(LI,rankings(i,2));
            Lcount=Lcount+1;
        end
    end
LHaverage=sum(LH)/Lcount;
LIaverage=sum(LI)/Lcount;
y=[LHaverage,LIaverage];
b1=['The average happiness rating within the linguistics field is ', num2str(LHaverage),' out of 10.  '];
b2=['The average involvement rating within the linguistics field is ', num2str(LIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end

if strcmp(a,'law')==1
    [j,k]=size(names);
    LAH=[];
    LAI=[];
    LAcount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'law')==1
            LAH=horzcat(LAH,rankings(i,1));
            LAI=horzcat(LAI,rankings(i,2));
            LAcount=LAcount+1;
        end
    end
LAHaverage=sum(LAH)/LAcount;
LAIaverage=sum(LAI)/LAcount;
y=[LAHaverage,LAIaverage];
b1=['The average happiness rating within the law field is ', num2str(LAHaverage),' out of 10.  '];
b2=['The average involvement rating within the law field is ', num2str(LAIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end

if strcmp(a,'physics')==1
    [j,k]=size(names);
    CH=[];
    CI=[];
    Ccount=0;
    for i = 1:j
        if strcmp(deblank(names(i,:)),'physics')==1
            CH=horzcat(CH,rankings(i,1));
            CI=horzcat(CI,rankings(i,2));
            Ccount=Ccount+1;
        end
    end
CHaverage=sum(CH)/Ccount;
CIaverage=sum(CI)/Ccount;
y=[CHaverage,CIaverage];
b1=['The average happiness rating within the physics field is ', num2str(CHaverage),' out of 10.  '];
b2=['The average involvement rating within the physics field is ', num2str(CIaverage),' out of 10.'];
disp(b1);
disp(b2);

f=[];
g=[];
for i = 1:j
    if strcmpi(a,deblank(names(i,:)))==1
        f=horzcat(f,rankings(i,1));
        g=horzcat(g,rankings(i,2));
    end
end
end
%concatenates both output strings to write to file
matrix= [b1, b2];
%Builds bar and scatter plots on subplots referencing the data
figure
subplot(1,2,1);
hold on
bar(y);
ylabel('Average Rating');
xlabel('Happiness         Involvement');
title('Average Happiness and Involvement');
subplot(1,2,2);
hold on
scatter(g,f);
title('Data for Inquired Field Of Study');
xlabel('Involvement');
ylabel('Happiness');
end
