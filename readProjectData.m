%Joshua Dwernychuk, 101427001
%Michael Giebler, 103626392


function [names, rankings] = readProjectData()
%This function reads data from a file
fid = fopen('project_data.txt', 'r'); % open file for reading
if fid == -1
  fprintf('Error: file "project_data.txt" could not be opened.\n');
  names = [];
  rankings = [];
%else conditional to read data from file
else    
  fprintf('Reading data file ');
  
  count = 0;
  while ~ feof(fid)
    count = count + 1;
    
    Name = fscanf(fid,'%s', 1);
    names(count, 1:length(Name)) = Name;
    rankings(count,:) = fscanf(fid, '%d%d%d%d%d%d%d%d%d%d%d\n', 11);
      
    if floor(count / 5) == count / 5
      fprintf('.'); % Display a dot for each 10 names read
    end
  end
  
  fprintf('\n');
  fclose(fid); %close file
end

end 
