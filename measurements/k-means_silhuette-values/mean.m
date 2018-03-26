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


for i = 1:1:10
    [idx_mean{i+1},C_mean{i+1}] = kmeans(mean_values,i);
end

for i = 1:1:10
    figure;
    silhouette(mean_values,idx_mean{i+1});
end


