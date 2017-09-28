function [] = writeProjectData( matrix )
%Writes data to a file
%opens file
fileID = fopen('list_file.txt','w');
%gets size of file
[x,y]=size(matrix);
%writes each line of matrix to a file
for i=1:x

    fprintf(fileID,'%s\n',matrix(i,:));

end
fclose(fileID);%closes file
end
