k=1;
for i = 1:4:28
    for j = 1:1:9
        values4fea(i,j) = mean(up{k,j});
        values4fea(i+1,j) = median(up{k,j});
        values4fea(i+2,j) = min(up{k,j});
        values4fea(i+3,j) = rms(up{k,j});
        
        values4fea(i+28,j) = mean(down{k,j});
        values4fea(i+29,j) = median(down{k,j});
        values4fea(i+30,j) = min(down{k,j});
        values4fea(i+31,j) = rms(down{k,j});
        
        
        values4fea(i+56,j) = mean(right{k,j});
        values4fea(i+57,j) = median(right{k,j});
        values4fea(i+58,j) = min(right{k,j});
        values4fea(i+59,j) = rms(right{k,j});
        
        
        values4fea(i+84,j) = mean(left{k,j});
        values4fea(i+85,j) = median(left{k,j});
        values4fea(i+86,j) = min(left{k,j});
        values4fea(i+87,j) = rms(left{k,j});

    end
    k=k+1;
end

for j = 1:1:8
    [idx_values4fea(:,j),C_values4fea{j}] = kmeans(values4fea,j+2);
end

eva_4feat = evalclusters(values4fea,idx_values4fea,'silhouette');

%%
clearvars idx_values4fea;
clearvars values4fea;
clearvars C_values4fea;


%% std/mean/median/rms
  
  
  k=1;
for i = 1:4:28
    for j = 1:1:9
        values4fea(i,j) = mean(up{k,j});
        values4fea(i+1,j) = median(up{k,j});
        values4fea(i+2,j) = std(up{k,j});
        values4fea(i+3,j) = rms(up{k,j});
        
        values4fea(i+28,j) = mean(down{k,j});
        values4fea(i+29,j) = median(down{k,j});
        values4fea(i+30,j) = std(down{k,j});
        values4fea(i+31,j) = rms(down{k,j});
           
        values4fea(i+56,j) = mean(right{k,j});
        values4fea(i+57,j) = median(right{k,j});
        values4fea(i+58,j) = std(right{k,j});
        values4fea(i+59,j) = rms(right{k,j});
      
        values4fea(i+84,j) = mean(left{k,j});
        values4fea(i+85,j) = median(left{k,j});
        values4fea(i+86,j) = std(left{k,j});
        values4fea(i+87,j) = rms(left{k,j});

    end
    k=k+1;
end

for i = 1:1:8
    [idx_values4fea(:,i),C_values4fea{i}] = kmeans(values4fea,i+2);
end

% for i = 1:1:10
%     figure;
%     silhouette(values4fea,idx_synthetic_values4fea(:,i));
% end

eva_4feat_mean_median_std_rms = evalclusters(values4fea,idx_values4fea,'silhouette');
  
  
%%






























