for i = 1:1:7
    for j = 1:1:9
        mean_values(i,j) = mean(up{i,j});
        median_values(i,j) = median(up{i,j});
        rms_values(i,j) = rms(up{i,j});
        std_values(i,j) = std(up{i,j});
    end
end

for i = 1:1:7
    for j = 1:1:9
        mean_values(i+7,j) = mean(down{i,j});
        median_values(i+7,j) = median(down{i,j});
        rms_values(i+7,j) = rms(down{i,j});
        std_values(i+7,j) = std(down{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
        mean_values(i+14,j) = mean(left{i,j});
        median_values(i+14,j) = median(left{i,j});
        rms_values(i+14,j) = rms(left{i,j});
        std_values(i+14,j) = std(left{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
        mean_values(i+21,j) = mean(right{i,j});
        median_values(i+21,j) = median(right{i,j});
        rms_values(i+21,j) = rms(right{i,j});
        std_values(i+21,j) = std(right{i,j});
    end
end


[idx_mean,C_mean] = kmeans(mean_values,4);
[idx_median,C_median] = kmeans(median_values,4);
[idx_rms,C_rms] = kmeans(rms_values,4);
[idx_std,C_std] = kmeans(std_values,4);

for i = 1:1:10
    [idx_mean_median{i},C_mean_median{i}] = kmeans(idx_mean,i);
end

for i = 1:1:10
    figure;
    silhouette(values1,idx_mean_median{i});
end


