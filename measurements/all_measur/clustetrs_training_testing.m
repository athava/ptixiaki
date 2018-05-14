%% training  1 %%%%%%%%%%%%%%%
 %% mean/rms/std/median
 %%% the fucking more extra bestest 


for i=1:1:7
   for j=1:1:9
        values4fea(i,j) = mean(newdata{1,i}{1,j});
        values4fea(i,j+9) = rms(newdata{1,i}{1,j});
        values4fea(i,j+18) = std(newdata{1,i}{1,j});
        values4fea(i,j+27) = median(newdata{1,i}{1,j});
   end
end

for i=11:1:17
   for j=1:1:9
        values4fea(i-3,j) = mean(newdata{1,i}{1,j});
        values4fea(i-3,j+9) = rms(newdata{1,i}{1,j});
        values4fea(i-3,j+18) = std(newdata{1,i}{1,j});
        values4fea(i-3,j+27) = median(newdata{1,i}{1,j});
   end
end


for i=21:1:27
   for j=1:1:9
        values4fea(i-6,j) = mean(newdata{1,i}{1,j});
        values4fea(i-6,j+9) = rms(newdata{1,i}{1,j});
        values4fea(i-6,j+18) = std(newdata{1,i}{1,j});
        values4fea(i-6,j+27) = median(newdata{1,i}{1,j});
   end
end

for i=31:1:37
   for j=1:1:9
        values4fea(i-9,j) = mean(newdata{1,i}{1,j});
        values4fea(i-9,j+9) = rms(newdata{1,i}{1,j});
        values4fea(i-9,j+18) = std(newdata{1,i}{1,j});
        values4fea(i-9,j+27) = median(newdata{1,i}{1,j});
   end
end


[c_idx_values4fea,C_values4fea] = kmeans(values4fea,4);
 
 %%
% %% mean-median-std-rms
% for i = 1:1:7
%     k=1;
%     for j = 1:4:36   
%         val_4_feat(i,j) = mean(newdata{1,i}{1,k});
%         val_4_feat(i,j+1) = median(newdata{1,i}{1,k});
%         val_4_feat(i,j+2) = std(newdata{1,i}{1,k});
%         val_4_feat(i,j+3) = rms(newdata{1,i}{1,k});
%         
%         val_4_feat(i+7,j) = mean(newdata{1,i+10}{1,k});
%         val_4_feat(i+7,j+1) = median(newdata{1,i+10}{1,k});
%         val_4_feat(i+7,j+2) = std(newdata{1,i+10}{1,k});
%         val_4_feat(i+7,j+3) = rms(newdata{1,i+10}{1,k});
%            
%         val_4_feat(i+14,j) = mean(newdata{1,i+20}{1,k});
%         val_4_feat(i+14,j+1) = median(newdata{1,i+20}{1,k});
%         val_4_feat(i+14,j+2) = std(newdata{1,i+20}{1,k});
%         val_4_feat(i+14,j+3) = rms(newdata{1,i+20}{1,k});
%       
%         val_4_feat(i+21,j) = mean(newdata{1,i+30}{1,k});
%         val_4_feat(i+21,j+1) = median(newdata{1,i+30}{1,k});
%         val_4_feat(i+21,j+2) = std(newdata{1,i+30}{1,k});
%         val_4_feat(i+21,j+3) = rms(newdata{1,i+30}{1,k});
%         k=k+1
%     end
%     
% end
% 
% [idx_values4fea,C_values4fea] = kmeans(val_4_feat,4);
% figure;
% silhouette(val_4_feat,idx_values4fea);
% title('1');
% 
% %% rms-std-median-mean
% 
% for i = 1:1:7
%     k=1;
%     for j = 1:4:36   
%         val_4_feat2(i,j) = rms(newdata{1,i}{1,k});
%         val_4_feat2(i,j+1) = std(newdata{1,i}{1,k});
%         val_4_feat2(i,j+2) = median(newdata{1,i}{1,k});
%         val_4_feat2(i,j+3) = mean(newdata{1,i}{1,k});
%         
%         val_4_feat2(i+7,j) = rms(newdata{1,i+10}{1,k});
%         val_4_feat2(i+7,j+1) = std(newdata{1,i+10}{1,k});
%         val_4_feat2(i+7,j+2) = median(newdata{1,i+10}{1,k});
%         val_4_feat2(i+7,j+3) = mean(newdata{1,i+10}{1,k});
%            
%         val_4_feat2(i+14,j) = rms(newdata{1,i+20}{1,k});
%         val_4_feat2(i+14,j+1) = std(newdata{1,i+20}{1,k});
%         val_4_feat2(i+14,j+2) = median(newdata{1,i+20}{1,k});
%         val_4_feat2(i+14,j+3) = mean(newdata{1,i+20}{1,k});
%       
%         val_4_feat2(i+21,j) = rms(newdata{1,i+30}{1,k});
%         val_4_feat2(i+21,j+1) = std(newdata{1,i+30}{1,k});
%         val_4_feat2(i+21,j+2) = median(newdata{1,i+30}{1,k});
%         val_4_feat2(i+21,j+3) = mean(newdata{1,i+30}{1,k});
%         k=k+1
%     end
%     
% end
% 
% [idx_values4fea2,C_values4fea2] = kmeans(val_4_feat2,4);
% figure;
% silhouette(val_4_feat2,idx_values4fea2);
% title('2');
% 
% %% median-rms-mean-std
% for i = 1:1:7
%     k=1;
%     for j = 1:4:36   
%         val_4_feat3(i,j) = median(newdata{1,i}{1,k});
%         val_4_feat3(i,j+1) = rms(newdata{1,i}{1,k});
%         val_4_feat3(i,j+2) = mean(newdata{1,i}{1,k});
%         val_4_feat3(i,j+3) = std(newdata{1,i}{1,k});
%         
%         val_4_feat3(i+7,j) = median(newdata{1,i+10}{1,k});
%         val_4_feat3(i+7,j+1) = rms(newdata{1,i+10}{1,k});
%         val_4_feat3(i+7,j+2) = mean(newdata{1,i+10}{1,k});
%         val_4_feat3(i+7,j+3) = std(newdata{1,i+10}{1,k});
%            
%         val_4_feat3(i+14,j) = median(newdata{1,i+20}{1,k});
%         val_4_feat3(i+14,j+1) = rms(newdata{1,i+20}{1,k});
%         val_4_feat3(i+14,j+2) = mean(newdata{1,i+20}{1,k});
%         val_4_feat3(i+14,j+3) = std(newdata{1,i+20}{1,k});
%       
%         val_4_feat3(i+21,j) = median(newdata{1,i+30}{1,k});
%         val_4_feat3(i+21,j+1) = rms(newdata{1,i+30}{1,k});
%         val_4_feat3(i+21,j+2) = mean(newdata{1,i+30}{1,k});
%         val_4_feat3(i+21,j+3) = std(newdata{1,i+30}{1,k});
%         k=k+1
%     end
%     
% end
% 
% [idx_values4fea3,C_values4fea3] = kmeans(val_4_feat3,4);
% figure;
% silhouette(val_4_feat3,idx_values4fea3);
% title('3');
% 
% %%
% % 
% % for i = 1:1:8
% %     [idx_values4fea(:,i),C_values4fea{i}] = kmeans(val_4_feat,i+2);
% % end
% % LALA = evalclusters(val_4_feat,idx_values4fea,'silhouette');
% % 
% % silhouette(val_4_feat,idx_values4fea)
% 
% 
% %%  %clusters for testing set
%     %median-rms-mean-std
% for i = 1:1:3
%     k=1;
%     for j = 1:4:36   
%         val_4_feat_testing(i,j) = median(newdata{1,i+7}{1,k});
%         val_4_feat_testing(i,j+1) = rms(newdata{1,i+7}{1,k});
%         val_4_feat3(i,j+2) = mean(newdata{1,i+7}{1,k});
%         val_4_feat3(i,j+3) = std(newdata{1,i+7}{1,k});
%         
%         val_4_feat3(i+7,j) = median(newdata{1,i+17}{1,k});
%         val_4_feat3(i+7,j+1) = rms(newdata{1,i+17}{1,k});
%         val_4_feat3(i+7,j+2) = mean(newdata{1,i+17}{1,k});
%         val_4_feat_testing(i+7,j+3) = std(newdata{1,i+17}{1,k});
%            
%         val_4_feat_testing(i+14,j) = median(newdata{1,i+27}{1,k});
%         val_4_feat_testing(i+14,j+1) = rms(newdata{1,i+27}{1,k});
%         val_4_feat_testing(i+14,j+2) = mean(newdata{1,i+27}{1,k});
%         val_4_feat_testing(i+14,j+3) = std(newdata{1,i+27}{1,k});
%       
%         val_4_feat_testing(i+21,j) = median(newdata{1,i+37}{1,k});
%         val_4_feat_testing(i+21,j+1) = rms(newdata{1,i+37}{1,k});
%         val_4_feat_testing(i+21,j+2) = mean(newdata{1,i+37}{1,k});
%         val_4_feat_testing(i+21,j+3) = std(newdata{1,i+37}{1,k});
%         k=k+1
%     end
%     
% end
% 
% [idx_values4fea_testing,C_values4fea_testing] = kmeans(val_4_feat_testing,4);
% figure;
% silhouette(val_4_feat_testing,idx_values4fea_testing);
% title('testing');
% 



