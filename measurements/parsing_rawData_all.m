% orientation UP-DOWN-LEFT-RIGHT

allFiles = dir('raw_data\up\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);


for k = 1:length(allFiles)
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:length(allFiles)
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:length(allFiles)
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:length(allFiles)
    emptycell = cellfun('isempty', mydata{1,k});
    n=1;
    for i = 1:21
        if(~emptycell(i))
            newdata{1,k}{1,n} = mydata{1,k}{1,i};
            n = n+1;
        end
    end   
end

clearvars allFiles ans emptycell fid i k mydata n numfiles param k;
raw_data(1,:) = newdata;
%raw_data_up(:,1) = newdata.';
clearvars newdata;

% DOWN
allFiles = dir('raw_data\down\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:length(allFiles)
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:length(allFiles)
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:length(allFiles)
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:length(allFiles)
    emptycell = cellfun('isempty', mydata{1,k});
    n=1;
    for i = 1:21
        if(~emptycell(i))
            newdata{1,k}{1,n} = mydata{1,k}{1,i};
            n = n+1;
        end
    end
end

clearvars allFiles ans emptycell fid i k mydata n numfiles param;
raw_data = [raw_data newdata];
%raw_data_down(:,1) = newdata.';
clearvars newdata   

% LEFT
allFiles = dir('raw_data\left\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);


for k = 1:length(allFiles)
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2);
    fclose(fid);
end

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:length(allFiles)
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:length(allFiles)
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:length(allFiles)
    emptycell = cellfun('isempty', mydata{1,k});
    n=1;
    for i = 1:21
        if(~emptycell(i))
            newdata{1,k}{1,n} = mydata{1,k}{1,i};
            n = n+1;
        end
    end   
end

clearvars allFiles ans emptycell fid i k mydata n numfiles param;
raw_data = [raw_data newdata];
%raw_data_left(:,1) = newdata.';
clearvars newdata k  

% RIGHT
allFiles = dir('raw_data\right\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);


for k = 1:length(allFiles)
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:length(allFiles)
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:length(allFiles)
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:length(allFiles)
    emptycell = cellfun('isempty', mydata{1,k});
    n=1;
    for i = 1:21
        if(~emptycell(i))
            newdata{1,k}{1,n} = mydata{1,k}{1,i};
            n = n+1;
        end
    end   
end

clearvars allFiles ans emptycell fid i k mydata n numfiles param;
raw_data = [raw_data newdata];
%raw_data_right(:,1) = newdata.';
clearvars newdata k test_params train_params



