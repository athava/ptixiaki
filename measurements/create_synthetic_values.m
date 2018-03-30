rng(0,'twister');

for j = 1:1:9
   up_synthetic_values(:,j) = [25-1].*rand(1000,1) ;
   down_synthetic_values(:,j) = [50-26].*rand(1000,1) +26 ;
   right_synthetic_values(:,j) = [75-51].*rand(1000,1) + 51;
   left_synthetic_values(:,j) = [100-76].*rand(1000,1) +76;
end

%% 1-feature mean, median, rms, std extract



for i = 1:1:10
    for j = 1:1:9
        mean_values(i,j) = mean(up_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        mean_values(i+10,j) = mean(down_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        mean_values(i+20,j) = mean(right_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        mean_values(i+30,j) = mean(left_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        
        median_values(i,j) = median(up_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        median_values(i+10,j) = median(down_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        median_values(i+20,j) = median(right_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        median_values(i+30,j) = median(left_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        
        min_values(i,j) = min(up_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        min_values(i+10,j) = min(down_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        min_values(i+20,j) = min(right_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        min_values(i+30,j) = min(left_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        
        rms_values(i,j) = rms(up_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        rms_values(i+10,j) = rms(down_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        rms_values(i+20,j) = rms(right_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        rms_values(i+30,j) = rms(left_synthetic_values([(((i*100) - 100)+1):(i*100)],j));
        
    end
end

for i = 1:1:10
    [idx_synthetic_mean(:,i),C_synthetic_mean{i}] = kmeans(mean_values,i);
    [idx_synthetic_median(:,i),C_synthetic_median{i}] = kmeans(median_values,i);
    [idx_synthetic_min(:,i),C_synthetic_min{i}] = kmeans(min_values,i);
    [idx_synthetic_rms(:,i),C_synthetic_rms{i}] = kmeans(rms_values,i);
end

%clearvars idx_synthetic_mean;
%clearvars C_synthetic_mean;
eva_4feat = evalclusters(mean_values,idx_synthetic_mean,'silhouette');


for i = 1:1:10
    figure;
    %silhouette(mean_values,idx_synthetic_mean(:,i));
    %silhouette(median_values,idx_synthetic_median(:,i));
    silhouette(min_values,idx_synthetic_min(:,i));
    %silhouette(rms_values,idx_synthetic_rms(:,i));
end


%% 4-features clustering /silhouette values mean/median/min/rms

k=1;
for i = 1:4:40
    for j = 1:1:9
        values4fea(i,j) = mean(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+1,j) = median(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+2,j) = min(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+3,j) = rms(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        values4fea(i+40,j) = mean(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+41,j) = median(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+42,j) = min(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+43,j) = rms(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        
        values4fea(i+80,j) = mean(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+81,j) = median(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+82,j) = min(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+83,j) = rms(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        
        values4fea(i+120,j) = mean(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+121,j) = median(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+122,j) = min(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values4fea(i+123,j) = rms(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));

    end
    k=k+1;
end

for i = 1:1:10
    [idx_synthetic_values4fea(:,i),C_synthetic_values4fea{i}] = kmeans(values4fea,i);
end

% for i = 1:1:10
%     figure;
%     silhouette(values4fea,idx_synthetic_values4fea(:,i));
% end

eva_4feat = evalclusters(values4fea,idx_synthetic_values4fea,'silhouette');

%%
clearvars idx_synthetic_values4fea;
clearvars values4fea;

%% 3-features clustering /silhouette values median/min/rms


k=1;
for i = 1:3:30
    for j = 1:1:9
        values3fea(i,j) = median(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+1,j) = rms(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+2,j) = min(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));        
        
        values3fea(i+30,j) = median(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+31,j) = rms(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+32,j) = min(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));       
        
        values3fea(i+60,j) = median(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+61,j) = rms(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+62,j) = min(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        values3fea(i+90,j) = median(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+91,j) = rms(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+92,j) = min(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
    end
    k=k+1;
end

for i = 1:1:10
    [idx_synthetic_values3fea(:,i),C_synthetic_values3fea{i}] = kmeans(values3fea,i);
end
% 
% for i = 1:1:10
%     figure;
%     silhouette(values3fea,idx_synthetic_values3fea(:,i));
% end

eva_median_min_rms = evalclusters(values3fea,idx_synthetic_values3fea,'silhouette');
%%
clearvars idx_synthetic_values3fea;
clearvars values3fea;

%% 3-features clustering /silhouette values mean/rms/min


k=1;
for i = 1:3:30
    for j = 1:1:9
        values3fea(i,j) = rms(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+1,j) = mean(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+2,j) = min(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));        
        
        values3fea(i+30,j) = rms(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+31,j) = mean(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+32,j) = min(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));       
        
        values3fea(i+60,j) = rms(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+61,j) = mean(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+62,j) = min(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        values3fea(i+90,j) = rms(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+91,j) = mean(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+92,j) = min(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
    end
    k=k+1;
end

for i = 1:1:10
    [idx_synthetic_values3fea(:,i),C_synthetic_values3fea{i}] = kmeans(values3fea,i);
end

% for i = 1:1:10
%     figure;
%     silhouette(values3fea,idx_synthetic_values3fea(:,i));
% end

eva_mean_rms_min = evalclusters(values3fea,idx_synthetic_values3fea,'silhouette');
%%
clearvars idx_synthetic_values3fea;
clearvars values3fea;

%% 3-features clustering /silhouette values mean/median/min


k=1;
for i = 1:3:30
    for j = 1:1:9
        values3fea(i,j) = median(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+1,j) = mean(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+2,j) = min(up_synthetic_values([(((k*100) - 100)+1):(k*100)],j));        
        
        values3fea(i+30,j) = median(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+31,j) = mean(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+32,j) = min(down_synthetic_values([(((k*100) - 100)+1):(k*100)],j));       
        
        values3fea(i+60,j) = median(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+61,j) = mean(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+62,j) = min(right_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        
        values3fea(i+90,j) = median(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+91,j) = mean(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
        values3fea(i+92,j) = min(left_synthetic_values([(((k*100) - 100)+1):(k*100)],j));
    end
    k=k+1;
end

for i = 1:1:10
    [idx_synthetic_values3fea(:,i),C_synthetic_values3fea{i}] = kmeans(values3fea,i);
end
% 
% for i = 1:1:10
%     figure;
%      silhouette(values3fea,idx_synthetic_values3fea(:,i));
% end

eva_median_mean_min = evalclusters(values3fea,idx_synthetic_values3fea,'silhouette');

%%
clearvars idx_synthetic_values3fea;
clearvars values3fea;

%%













