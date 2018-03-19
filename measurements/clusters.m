
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

%%
k=1;
for i = 1:4:14
    for j = 1:1:9
        values1(i,j) = mean(up{k,j});
        values1(i+1,j) = median(up{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values1(i+14,j) = mean(down{k,j});
        values1(i+15,j) = median(down{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values1(i+28,j) = mean(left{k,j});
        values1(i+29,j) = median(left{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values1(i+42,j) = mean(right{k,j});
        values1(i+43,j) = median(right{k,j});
    end
    k=k+1;
end

[idx_mean_median,C_mean_median] = kmeans(values1,4);


%%
k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i,j) = mean(up{k,j});
        values4(i+1,j) = median(up{k,j});
        values4(i+2,j) = max(up{k,j});
        values4(i+3,j) = min(up{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+28,j) = mean(down{k,j});
        values4(i+29,j) = median(down{k,j});
        values4(i+30,j) = max(down{k,j});
        values4(i+31,j) = min(down{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+56,j) = mean(left{k,j});
        values4(i+57,j) = median(left{k,j});
        values4(i+58,j) = max(left{k,j});
        values4(i+59,j) = min(left{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+84,j) = mean(right{k,j});
        values4(i+85,j) = median(right{k,j});
        values4(i+86,j) = max(right{k,j});
        values4(i+87,j) = min(right{k,j});
    end
    k=k+1;
end

[idx_4_features,C_4_features] = kmeans(values4,4);
  %%
   
  k=1;
for i = 1:2:14
    for j = 1:1:9
        values2(i,j) = rms(up{k,j});
        values2(i+1,j) = mean(up{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values2(i+14,j) = rms(down{k,j});
        values2(i+15,j) = mean(down{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values2(i+28,j) = rms(left{k,j});
        values2(i+29,j) = mean(left{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:2:14
    for j = 1:1:9
        values2(i+42,j) = rms(right{k,j});
        values2(i+43,j) = mean(right{k,j});
    end
    k=k+1;
end

[idx_mean_rms,C_mean_rms] = kmeans(values2,4);
  
  %%
k=1;
for i = 1:3:21
    for j = 1:1:9
        values3(i,j) = mean(up{k,j});
        values3(i+1,j) = std(up{k,j});
        values3(i+3,j) = median(up{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:3:21
    for j = 1:1:9
        values3(i+21,j) = mean(down{k,j});
        values3(i+22,j) = std(down{k,j});
        values3(i+23,j) = median(down{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:3:21
    for j = 1:1:9
        values3(i+42,j) = mean(left{k,j});
        values3(i+43,j) = std(left{k,j});
        values3(i+44,j) = median(left{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:3:21
    for j = 1:1:9
        values3(i+64,j) = mean(right{k,j});
        values3(i+65,j) = std(right{k,j});
        values3(i+66,j) = median(right{k,j});
    end
    k=k+1;
end

[idx_mean_std_median,C_mean_std_median] = kmeans(values3,8); 
  
%%
k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i,j) = std(up{k,j});
        values4(i+1,j) = median(up{k,j});
        values4(i+2,j) = rms(up{k,j});
        values4(i+3,j) = mean(up{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+28,j) = std(down{k,j});
        values4(i+29,j) = median(down{k,j});
        values4(i+30,j) = rms(down{k,j});
        values4(i+31,j) = mean(down{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+56,j) = std(left{k,j});
        values4(i+57,j) = median(left{k,j});
        values4(i+58,j) = rms(left{k,j});
        values4(i+59,j) = mean(left{k,j});
    end
    k=k+1;
end

k=1;
for i = 1:4:28
    for j = 1:1:9
        values4(i+84,j) = std(right{k,j});
        values4(i+85,j) = median(right{k,j});
        values4(i+86,j) = rms(right{k,j});
        values4(i+87,j) = mean(right{k,j});
    end
    k=k+1;
end

[idx_4_features,C_4_features] = kmeans(values4,4);

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  




























