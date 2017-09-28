function [names, rankings] = Read_names_file()
%--------------------------------------------------------------------------
% DESCRIPTION: Read the baby names and their rankings from the data file.
%
%      INPUTS: None
%
%     OUTPUTS: names   - a 2D matrix of characters where each row
%                             contains a unique baby name.
%              rankings - a 2D matrix of integer rankings where the jth 
%                        row contains the census rankings for the jth name.
%                             rankings(j,1)  - 1900 census ranking
%                             rankings(j,2)  - 1910 census ranking
%                             ...
%                             ranking(j,11) - 2000 census ranking
% 
%--------------------------------------------------------------------------

fid = fopen('project_data.txt', 'r'); % open file for reading
if fid == -1
  fprintf('Error: file "name_data_file.txt" could not be opened.\n');
  names = []; % we don't know how long the files is, how many rows
  rankings = []; %same here
else    
  fprintf('Reading data file ');
  
  count = 0;
  while ~ feof(fid)
    count = count + 1;
    
    Name = fscanf(fid,'%s', 1);
    names(count, 1:length(Name)) = Name;
    rankings(count,:) = fscanf(fid, '%d%d%d%d%d%d%d%d%d%d%d\n', 11);
      
    if floor(count / 100) == count / 100
      fprintf('.'); % Display a dot for each 100 names read
    end
  end
  
  fprintf('\n');
  fclose(fid); %close file
end

end 

