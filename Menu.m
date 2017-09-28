x=0;
while x ~= 9
    x= menu('Please select the task you would like to accomplish', 'Load data file', 'Compare yourself', 'Compare yourself (Plot)', 'Visualize student data distribution','Make Inquiry','Make Happiness Projection from Involvement','Make Involvement Projection from Happiness','Plot Involvement versus Happiness','Exit Program');
    switch x
        case 1
            %Read data from the data file
            [names, rankings] = readProjectData();

        case 2
            %Ranks user in comparison with all students and with other students within a similar field of study(Percentiles)

            b=input('Please enter your level of happiness with university (0-10): ');
            c=input('Please enter your level of involvement with campus life (0-10): ');
            matrix = rankUser(b,c, rankings);
            %Writes data to a file
            writeProjectData(matrix);
        case 3
            %Plots user in comparison with all students and with other students within a similar field of study
            a=input('Please enter your major: ','s');
            b=input('Please enter your level of happiness with university (0-10): ');
            c=input('Please enter your level of involvement with campus life (0-10): ');
            plotUser(a,b,c,names,rankings);
        case 4
            %Displays diagram showing average happiness and average
            %involvement for each field of study on campus
            showAll(names,rankings);
        case 5
            %Allows user to inquire about a specific field of study and
            %recieve a display of the happiness and involvement data
            %collected under that field of study
            a=input('Which field would you like to inquire about? ','s');
            matrix = makeInquiry(a,names,rankings);
            %Writes data to a file
            writeProjectData(matrix);

        case 6
            %Allows user to input a level of involvement (0-100) and outputs a
            %proportional happiness with university value based on the data collected.
            a=input('Please enter a level of involvement (0-10): ');
            involvementHappinessCompare(a,rankings)
        case 7
            %Allows user to input a level of happiness (0-100) and outputs a
            %proportional involvement with campus life value based on the data collected.
            a=input('Please enter a level of happiness (0-10): ');
            happinessInvolvementCompare(a,rankings)
        case 8
            %Displays scatter plot of student happiness with university
            %versus student involvement with campus life
            plotInvolvementHappiness(rankings)
        case 9
            %Ends program
    end
end
