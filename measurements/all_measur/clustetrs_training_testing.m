%% training  1 %%%%%%%%%%%%%%%

k=1
for i = 1:4:28
    for j = 1:1:9   
        val_4_feat(i,j) = mean(newdata{1,k}{1,j});
        val_4_feat(i+1,j) = median(newdata{1,k}{1,j});
        val_4_feat(i+2,j) = std(newdata{1,k}{1,j});
        val_4_feat(i+3,j) = rms(newdata{1,k}{1,j});
        
        val_4_feat(i+28,j) = mean(newdata{1,k+10}{1,j});
        val_4_feat(i+29,j) = median(newdata{1,k+10}{1,j});
        val_4_feat(i+30,j) = std(newdata{1,k+10}{1,j});
        val_4_feat(i+31,j) = rms(newdata{1,k+10}{1,j});
           
        val_4_feat(i+56,j) = mean(newdata{1,k+20}{1,j});
        val_4_feat(i+57,j) = median(newdata{1,k+20}{1,j});
        val_4_feat(i+58,j) = std(newdata{1,k+20}{1,j});
        val_4_feat(i+59,j) = rms(newdata{1,k+20}{1,j});
      
        val_4_feat(i+84,j) = mean(newdata{1,k+30}{1,j});
        val_4_feat(i+85,j) = median(newdata{1,k+30}{1,j});
        val_4_feat(i+86,j) = std(newdata{1,k+30}{1,j});
        val_4_feat(i+87,j) = rms(newdata{1,k+30}{1,j});
    end
    k=k+1;
end

[idx_values4fea,C_values4fea] = kmeans(val_4_feat,4);


% 
% for i = 1:1:8
%     [idx_values4fea(:,i),C_values4fea{i}] = kmeans(val_4_feat,i+2);
% end
% LALA = evalclusters(val_4_feat,idx_values4fea,'silhouette');
% 
% silhouette(val_4_feat,idx_values4fea)


%%%clusters for testing set
 for j = 1:1:9 
        val_4_feat_first(1,j) = mean(newdata{1,8}{1,j});
        val_4_feat_first(1+1,j) = median(newdata{1,8}{1,j});
        val_4_feat_first(1+2,j) = std(newdata{1,8}{1,j});
        val_4_feat_first(1+3,j) = rms(newdata{1,8}{1,j});
 end
        
[idx_values4fea,C_values4fea] = kmeans(val_4_feat,4);     



%% right clustering
for i =1:1:7
    for j=1:36
        Amean_val(i,j) = mean(newdata{1,i }{1,j});
      
        Amean_val(i+7,j) = mean(newdata{1,i+10}{1,j});
  
        Amean_val(i+14,j) = mean(newdata{1,i+20}{1,j});

        Amean_val(i+21,j) = mean(newdata{1,i+30}{1,j});
    end
end





