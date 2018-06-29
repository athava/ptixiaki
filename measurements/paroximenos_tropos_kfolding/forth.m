%%
clear;

train_params = [1 2 3 4 10 9 8];
test_params = [7 6 5];

%% UP
allFiles = dir('C:\Users\dona\Desktop\ptixiaki\measurements\up\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:10
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:10 
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:10
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:10
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:10
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

% train data

for k = 1:7   
 	up_train{k} = newdata{1,train_params(k)}
end

% test set

for k = 1:3   
 	up_test{k} = newdata{1,test_params(k)}
end

clearvars newdata k  

% DOWN
allFiles = dir('C:\Users\dona\Desktop\ptixiaki\measurements\down\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:10
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:10 
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:10
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:10
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:10
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

% train data

for k = 1:7   
 	down_train{k} = newdata{1,train_params(k)}
end

% test set

for k = 1:3   
 	down_test{k} = newdata{1,test_params(k)}
end

clearvars newdata k  

% LEFT
allFiles = dir('C:\Users\dona\Desktop\ptixiaki\measurements\left\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);

for k = 1:10
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:10 
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:10
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:10
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:10
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

% train data

for k = 1:7   
 	left_train{k} = newdata{1,train_params(k)}
end

% test set

for k = 1:3   
 	left_test{k} = newdata{1,test_params(k)}
end

clearvars newdata k  

% RIGHT
allFiles = dir('C:\Users\dona\Desktop\ptixiaki\measurements\right\*.dat'); 
numfiles = length(allFiles);
mydata = cell(1, numfiles);


for k = 1:10
    fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
 	param{k} = textscan(fid,' %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %*[^\n]',1,'HeaderLines',2); 
    fclose(fid);
end

for k = 1:10 
   fid = fopen(strcat(allFiles(k).folder,'\', allFiles(k).name),'r');
   mydata{k} = textscan(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*[^\n]','HeaderLines',4); 
   fclose(fid);
end


for k = 1:10
    for i = 1:21
        if(isequal(param{1,k}{1,i}{1,1}, 'UNCAL') )
            mydata{1,k}{1,i} = [];
        end
    end
end

for k = 1:10
    mydata{1,k}{1,7} = [];
    mydata{1,k}{1,8} = [];
    mydata{1,k}{1,9} = [];
end


for k = 1:10
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

% train data

for k = 1:7   
 	right_train{k} = newdata{1,train_params(k)}
end

% test set

for k = 1:3   
 	right_test{k} = newdata{1,test_params(k)}
end

clearvars newdata k test_params train_params

%% mean/rms/std/median
 %%% the fucking more extra bestest 
 %%% for training

k = 1;
for i=1:1:7
   for j=1:1:9
        train_set(i,j) = mean(up_train{1,k}{1,j});
        train_set(i,j+9) = rms(up_train{1,k}{1,j});
        train_set(i,j+18) = std(up_train{1,k}{1,j});
        train_set(i,j+27) = median(up_train{1,k}{1,j});
%         train_set(i,j+36) = range(up_train{1,k}{1,j});
%        train_set(i,j+45) = min(up_train{1,k}{1,j});
%         train_set(i,j+54) = min(up_train{1,k}{1,j});
%         train_set(i,j+63) = min(up_train{1,k}{1,j});
%         train_set(i,j+72) = max(normc(up_train{1,k}{1,j}));
   end
   k = k+1;
end

k=1;
for i=8:1:14
   for j=1:1:9
        train_set(i,j) = mean(down_train{1,k}{1,j});
        train_set(i,j+9) = rms(down_train{1,k}{1,j});
        train_set(i,j+18) = std(down_train{1,k}{1,j});
        train_set(i,j+27) = median(down_train{1,k}{1,j});
%         train_set(i,j+36) = range(down_train{1,k}{1,j});
%        train_set(i,j+45) = min(down_train{1,k}{1,j});
%         train_set(i,j+54) = min(down_train{1,k}{1,j});
%         train_set(i,j+63) = min(down_train{1,k}{1,j});
%         train_set(i,j+72) = max(normc(down_train{1,k}{1,j}));
   end
   k = k+1;
end


k=1;
for i=15:1:21
   for j=1:1:9
        train_set(i,j) = mean(right_train{1,k}{1,j});
        train_set(i,j+9) = rms(right_train{1,k}{1,j});
        train_set(i,j+18) = std(right_train{1,k}{1,j});
        train_set(i,j+27) = median(right_train{1,k}{1,j});
%         train_set(i,j+36) = range(right_train{1,k}{1,j});
 %       train_set(i,j+45) = min(right_train{1,k}{1,j});
%         train_set(i,j+54) = min(right_train{1,k}{1,j});
%         train_set(i,j+63) = min(right_train{1,k}{1,j});
%         train_set(i,j+72) = max(normc(right_train{1,k}{1,j}));
   end
   k = k+1;
end

k=1;
for i=22:1:28
   for j=1:1:9
        train_set(i,j) = mean(left_train{1,k}{1,j});
        train_set(i,j+9) = rms(left_train{1,k}{1,j});
        train_set(i,j+18) = std(left_train{1,k}{1,j});
        train_set(i,j+27) = median(left_train{1,k}{1,j});
%         train_set(i,j+36) = range(left_train{1,k}{1,j});
 %       train_set(i,j+45) = min(left_train{1,k}{1,j});
%         train_set(i,j+54) = min(left_train{1,k}{1,j});
%         train_set(i,j+63) = min(left_train{1,k}{1,j});
%         train_set(i,j+72) = max(normc(left_train{1,k}{1,j}));
   end
   k = k+1;
end


 [tr_idx,C_train_set] = kmeans(train_set,4, 'Replicates',45, 'Distance','cityblock');
 eval_train = evalclusters(train_set,tr_idx,'silhouette', 'Distance','cityblock');


%%%for testing set 

k = 1;
for i=1:1:3
   for j=1:1:9
        test_set(i,j) = mean(up_train{1,k}{1,j});
        test_set(i,j+9) = rms(up_train{1,k}{1,j});
        test_set(i,j+18) = std(up_train{1,k}{1,j});
        test_set(i,j+27) = median(up_train{1,k}{1,j});
   end
   k = k+1;
end

k=1;
for i=4:1:6
   for j=1:1:9
        test_set(i,j) = mean(down_train{1,k}{1,j});
        test_set(i,j+9) = rms(down_train{1,k}{1,j});
        test_set(i,j+18) = std(down_train{1,k}{1,j});
        test_set(i,j+27) = median(down_train{1,k}{1,j});
   end
   k = k+1;
end


k=1;
for i=7:1:9
   for j=1:1:9
        test_set(i,j) = mean(right_train{1,k}{1,j});
        test_set(i,j+9) = rms(right_train{1,k}{1,j});
        test_set(i,j+18) = std(right_train{1,k}{1,j});
        test_set(i,j+27) = median(right_train{1,k}{1,j});
   end
   k = k+1;
end

k=1;
for i=10:1:12
   for j=1:1:9
        test_set(i,j) = mean(left_train{1,k}{1,j});
        test_set(i,j+9) = rms(left_train{1,k}{1,j});
        test_set(i,j+18) = std(left_train{1,k}{1,j});
        test_set(i,j+27) = median(left_train{1,k}{1,j});
   end
   k = k+1;
end


 [test_idx,C_test_set] = kmeans(test_set,4, 'Replicates',45, 'Distance','cityblock');
 
 








