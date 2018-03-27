

%a = 50;
%b = 100;
%r = (b-a).*rand(1000,1) + a;

%% create synthetic values 
rng(0,'twister');

for j = 1:1:9
   up_synthetic_values(:,j) = [25-1].*rand(1000,1) ;
   down_synthetic_values(:,j) = [50-26].*rand(1000,1) +26 ;
   right_synthetic_values(:,j) = [75-51].*rand(1000,1) + 51;
   left_synthetic_values(:,j) = [100-76].*rand(1000,1) +76;
end

%% mean, median, rms, std extract

for j = 1:1:9
    mean_values(1,j) = mean(up_synthetic_values(j,:));
    median_values(1,j) = median(up_synthetic_values(j,:));
    rms_values(1,j) = rms(up_synthetic_values(j,:));
    std_values(1,j) = std(up_synthetic_values(j,:));
    
    mean_values(2,j) = mean(down_synthetic_values(j,:));
    median_values(2,j) = median(down_synthetic_values(j,:));
    rms_values(2,j) = rms(down_synthetic_values(j,:));
    std_values(2,j) = std(down_synthetic_values(j,:));
    
    mean_values(3,j) = mean(right_synthetic_values(j,:));
    median_values(3,j) = median(right_synthetic_values(j,:));
    rms_values(3,j) = rms(right_synthetic_values(j,:));
    std_values(3,j) = std(right_synthetic_values(j,:));
    
    mean_values(4,j) = mean(left_synthetic_values(j,:));
    median_values(4,j) = median(left_synthetic_values(j,:));
    rms_values(4,j) = rms(left_synthetic_values(j,:));
    std_values(4,j) = std(left_synthetic_values(j,:));
end

%%

for i = 1:1:10
    for j = 1:1:9
        a= uint32((i*100) - 100);
        b =i*100;
        mean_values(i,j) = mean(up_synthetic_values([a:100],j));
    end
end

for i = 1:100:1000
    for j = 1:1:9
        mean_values(i+10,j) = mean(down{i,j});
    end
end


for i = 1:100:1000
    for j = 1:1:9
        mean_values(i+20,j) = mean(left{i,j});
    end
end


for i = 1:100:1000
    for j = 1:1:9
        mean_values(i+30,j) = mean(right{i,j});
    end
end

%% cluster synthetic values%%%%%

for i = 1:1:10
    [idx_synthetic(:,i),C_synthetic{i}] = kmeans(mean_values,i);
end

for i = 1:1:10
    figure;
    silhouette(mean_values,idx_synthetic(:,i));
end

