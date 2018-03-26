for i = 1:1:7
    for j = 1:1:9
        median_values(i,j) = median(up{i,j});
    end
end

for i = 1:1:7
    for j = 1:1:9
        median_values(i+7,j) = median(down{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
        median_values(i+14,j) = median(left{i,j});
    end
end


for i = 1:1:7
    for j = 1:1:9
       median_values(i+21,j) = median(right{i,j});
    end
end


for i = 1:1:10
    [idx_median{i+1},C_median{i+1}] = kmeans(median_values,i);
end

for i = 1:1:10
    figure;
    lala(:,i) = silhouette(median_values,idx_median{i+1});
end

eva = evalclusters(median_values,idx_median{1+1},'CalinskiHarabasz')

for i = 1:1:10
    
    my_min(1,i) = min(lala(:,i));
    my_min(2,i) = median(lala(:,i));
end
