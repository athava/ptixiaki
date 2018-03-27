for i = 1:1:7
    for j = 1:1:9
        mean_values(i,j) = mean(up{i,j});
    end
end

for i = 1:1:7
    for j = 1:1:9
        mean_values(i+7,j) = mean(down{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
        mean_values(i+14,j) = mean(left{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
        mean_values(i+21,j) = mean(right{i,j});
    end
end


for i = 1:1:10
    [idx_mean(:,i),C_mean{i}] = kmeans(mean_values,i);
end

for i = 1:1:10
    figure;
    silhouette(mean_values,idx_mean(:,i));
end


eva = evalclusters(mean_values,idx_mean,'CalinskiHarabasz')
