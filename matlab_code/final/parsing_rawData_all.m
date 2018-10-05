
% orientation UP-DOWN-LEFT-RIGHT


% metriseis vaggeliws

dir1 = 'raw_data\vag\up\*.dat';
dir2 = 'raw_data\vag\down\*.dat';
dir3 = 'raw_data\vag\left\*.dat';
dir4 = 'raw_data\vag\right\*.dat';


% % metriseis vasili

% dir1 = 'raw_data\vasilis\up\*.dat';
% dir2 = 'raw_data\vasilis\down\*.dat';
% dir3 = 'raw_data\vasilis\left\*.dat';
% dir4 = 'raw_data\vasilis\right\*.dat';
% 

% % metriseis nikos

% dir1 = 'raw_data\nikos\up\*.dat';
% dir2 = 'raw_data\nikos\down\*.dat';
% dir3 = 'raw_data\nikos\left\*.dat';
% dir4 = 'raw_data\nikos\right\*.dat';


% % parse clear
% 
% dir1 = 'raw_data\clear\up\*.dat';
% dir2 = 'raw_data\clear\down\*.dat';
% dir3 = 'raw_data\clear\left\*.dat';
% dir4 = 'raw_data\clear\right\*.dat';

% % parse 16 orient data
% dir1 = 'raw_data\16_meas_all_orient\up\*.dat';
% dir2 = 'raw_data\16_meas_all_orient\down\*.dat';
% dir3 = 'raw_data\16_meas_all_orient\left\*.dat';
% dir4 = 'raw_data\16_meas_all_orient\right\*.dat';
% 


allFiles = dir(dir1); 
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
allFiles = dir(dir2); 
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
allFiles = dir(dir3); 
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
allFiles = dir(dir4); 
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
clearvars dir1 dir2 dir3 dir4


%%

% dir1 = 'C:\Users\anasaki\Desktop\measurements\giorgos_dar\2018-08-06_giorDar_up\*.csv';
% dir2 = 'C:\Users\anasaki\Desktop\measurements\giorgos_dar\2018-08-06_giorDar_down\*.csv';
% dir3 = 'C:\Users\anasaki\Desktop\measurements\giorgos_dar\2018-08-06_giorDar_left\*.csv';
% dir4 = 'C:\Users\anasaki\Desktop\measurements\giorgos_dar\2018-08-06_giorDar_right\*.csv';

dir1 = 'C:\Users\anasaki\Desktop\measurements\manos\2018-08-06_manos_up\*.csv';
dir2 = 'C:\Users\anasaki\Desktop\measurements\manos\2018-08-06_manos_down\*.csv';
dir3 = 'C:\Users\anasaki\Desktop\measurements\manos\2018-08-06_manos_left\*.csv';
dir4 = 'C:\Users\anasaki\Desktop\measurements\manos\2018-08-06_manos_right\*.csv';



allFiles = dir(dir1); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);


for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%*f%f%f%f%f%f%f%f%f%f','HeaderLines',3); 
   fclose(fid);
end


clearvars allFiles ans emptycell fid i k  n numfiles param k;
raw_data(1,:) = mydata;
clearvars mydata;

% % % % % % %

allFiles = dir(dir2); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%*f%f%f%f%f%f%f%f%f%f','HeaderLines',3); 
   fclose(fid);
end


clearvars allFiles ans emptycell fid i k  n numfiles param;
raw_data = [raw_data mydata];
clearvars mydata   

% % % % % % %

allFiles = dir(dir3); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%*f%f%f%f%f%f%f%f%f%f','HeaderLines',3); 
   fclose(fid);
end

clearvars allFiles ans emptycell fid i k  n numfiles param;
raw_data = [raw_data mydata];
clearvars mydata   

% % % % % % %

allFiles = dir(dir4); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:length(allFiles)
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%*f%f%f%f%f%f%f%f%f%f','HeaderLines',3); 
   fclose(fid);
end

clearvars allFiles ans emptycell fid i k  n numfiles param;
raw_data = [raw_data mydata];
clearvars mydata

clearvars dir1 dir2 dir3 dir4
































