allFiles = dir('*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:numfiles 
    fid = fopen(allFiles(k).name,'r');
 	param{k} = textscan(fid,  ' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:numfiles 
   fid = fopen(allFiles(k).name,'r');
   mydata{k} = textscan(fid,  '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:40
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:40
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:40
    emptycell = cellfun('isempty', mydata{1,k});
    n=1;
    for i = 1:21
        if(~emptycell(i))
            newdata{1,k}{1,n} = mydata{1,k}{1,i};
            n = n+1;
        end
    end   
end

newdata =newdata';
newdata =newdata';