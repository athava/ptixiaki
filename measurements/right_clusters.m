%% mean/median/std/rms
  
% 
% for i=1:1:7
%    for j=1:1:9
%         values4fea(i,j) = mean(up{i,j});
%         values4fea(i,j+9) = median(up{i,j});
%         values4fea(i,j+18) = std(up{i,j});
%         values4fea(i,j+27) = rms(up{i,j});
%    end
% end
% 
% k=1;
% for i=8:1:14
%    for j=1:1:9
%         values4fea(i,j) = mean(down{k,j});
%         values4fea(i,j+9) = median(down{k,j});
%         values4fea(i,j+18) = std(down{k,j});
%         values4fea(i,j+27) = rms(down{k,j});
%    end
%    k = k+1;
% end
% 
% 
% k=1;
% for i=15:1:21
%    for j=1:1:9
%         values4fea(i,j) = mean(right{k,j});
%         values4fea(i,j+9) = median(right{k,j});
%         values4fea(i,j+18) = std(right{k,j});
%         values4fea(i,j+27) = rms(right{k,j});
%    end
%    k = k+1;
% end
% 
% k=1;
% for i=22:1:28
%    for j=1:1:9
%         values4fea(i,j) = mean(left{k,j});
%         values4fea(i,j+9) = median(left{k,j});
%         values4fea(i,j+18) = std(left{k,j});
%         values4fea(i,j+27) = rms(left{k,j});
%    end
%    k = k+1;
% end
% 
% 
%  [a_idx_values4fea,C_values4fea] = kmeans(values4fea,4);


 %% mean/median/rms/std
% 
% for i=1:1:7
%    for j=1:1:9
%         values4fea(i,j) = mean(up{i,j});
%         values4fea(i,j+9) = median(up{i,j});
%         values4fea(i,j+18) = rms(up{i,j});
%         values4fea(i,j+27) = std(up{i,j});
%    end
% end
% 
% k=1;
% for i=8:1:14
%    for j=1:1:9
%         values4fea(i,j) = mean(down{k,j});
%         values4fea(i,j+9) = median(down{k,j});
%         values4fea(i,j+18) = rms(down{k,j});
%         values4fea(i,j+27) = std(down{k,j});
%    end
%    k = k+1;
% end
% 
% 
% k=1;
% for i=15:1:21
%    for j=1:1:9
%         values4fea(i,j) = mean(right{k,j});
%         values4fea(i,j+9) = median(right{k,j});
%         values4fea(i,j+18) = rms(right{k,j});
%         values4fea(i,j+27) = std(right{k,j});
%    end
%    k = k+1;
% end
% 
% k=1;
% for i=22:1:28
%    for j=1:1:9
%         values4fea(i,j) = mean(left{k,j});
%         values4fea(i,j+9) = median(left{k,j});
%         values4fea(i,j+18) = rms(left{k,j});
%         values4fea(i,j+27) = std(left{k,j});
%    end
%    k = k+1;
% end
% 
% 
%  [b_idx_values4fea,C_values4fea] = kmeans(values4fea,4);
% 

 %% mean/rms/std/median
 %%% the fucking more extra bestest 
 %%% for training

for i=1:1:7
   for j=1:1:9
        train_set(i,j) = mean(up_tr{i,j});
        train_set(i,j+9) = rms(up_tr{i,j});
        train_set(i,j+18) = std(up_tr{i,j});
        train_set(i,j+27) = median(up_tr{i,j});
   end
end

k=1;
for i=8:1:14
   for j=1:1:9
        train_set(i,j) = mean(down_tr{k,j});
        train_set(i,j+9) = rms(down_tr{k,j});
        train_set(i,j+18) = std(down_tr{k,j});
        train_set(i,j+27) = median(down_tr{k,j});
   end
   k = k+1;
end


k=1;
for i=15:1:21
   for j=1:1:9
        train_set(i,j) = mean(right_tr{k,j});
        train_set(i,j+9) = rms(right_tr{k,j});
        train_set(i,j+18) = std(right_tr{k,j});
        train_set(i,j+27) = median(right_tr{k,j});
   end
   k = k+1;
end

k=1;
for i=22:1:28
   for j=1:1:9
        train_set(i,j) = mean(left_tr{k,j});
        train_set(i,j+9) = rms(left_tr{k,j});
        train_set(i,j+18) = std(left_tr{k,j});
        train_set(i,j+27) = median(left_tr{k,j});
   end
   k = k+1;
end


 [tr_idx,C_train_set] = kmeans(train_set,4);
 eval_train = evalclusters(train_set,tr_idx,'silhouette');

%%
%%%for testing set 

for i=1:1:3
   for j=1:1:9
        test_set(i,j) = mean(up_test{i,j});
        test_set(i,j+9) = rms(up_test{i,j});
        test_set(i,j+18) = std(up_test{i,j});
        test_set(i,j+27) = median(up_test{i,j});
   end
end

k=1;
for i=4:1:6
   for j=1:1:9
        test_set(i,j) = mean(down_test{k,j});
        test_set(i,j+9) = rms(down_test{k,j});
        test_set(i,j+18) = std(down_test{k,j});
        test_set(i,j+27) = median(down_test{k,j});
   end
   k = k+1;
end


k=1;
for i=7:1:9
   for j=1:1:9
        test_set(i,j) = mean(right_test{k,j});
        test_set(i,j+9) = rms(right_test{k,j});
        test_set(i,j+18) = std(right_test{k,j});
        test_set(i,j+27) = median(right_test{k,j});
   end
   k = k+1;
end

k=1;
for i=10:1:12
   for j=1:1:9
        test_set(i,j) = mean(left_test{k,j});
        test_set(i,j+9) = rms(left_test{k,j});
        test_set(i,j+18) = std(left_test{k,j});
        test_set(i,j+27) = median(left_test{k,j});
   end
   k = k+1;
end


 [test_idx,C_test_set] = kmeans(test_set,4);
 
 
%% rms/std/ mean/median

% for i=1:1:7
%    for j=1:1:9
%         values4fea(i,j) = std(up{i,j});
%         values4fea(i,j+9) = rms(up{i,j});
%         values4fea(i,j+18) = mean(up{i,j});
%         values4fea(i,j+27) = median(up{i,j});
%    end
% end
% 
% k=1;
% for i=8:1:14
%    for j=1:1:9
%         values4fea(i,j) = std(down{k,j});
%         values4fea(i,j+9) = rms(down{k,j});
%         values4fea(i,j+18) = mean(down{k,j});
%         values4fea(i,j+27) = median(down{k,j});
%    end
%    k = k+1;
% end
% 
% 
% k=1;
% for i=15:1:21
%    for j=1:1:9
%         values4fea(i,j) = std(right{k,j});
%         values4fea(i,j+9) = rms(right{k,j});
%         values4fea(i,j+18) = mean(right{k,j});
%         values4fea(i,j+27) = median(right{k,j});
%    end
%    k = k+1;
% end
% 
% k=1;
% for i=22:1:28
%    for j=1:1:9
%         values4fea(i,j) = std(left{k,j});
%         values4fea(i,j+9) = rms(left{k,j});
%         values4fea(i,j+18) = mean(left{k,j});
%         values4fea(i,j+27) = median(left{k,j});
%    end
%    k = k+1;
% end
% 
% 
%  [d_idx_values4fea,C_values4fea] = kmeans(values4fea,4);

%% std/median/mean/rms/
% 
% for i=1:1:7
%    for j=1:1:9
%         values4fea(i,j) = std(up{i,j});
%         values4fea(i,j+9) = median(up{i,j});
%         values4fea(i,j+18) = mean(up{i,j});
%         values4fea(i,j+27) = rms(up{i,j});
%    end
% end
% 
% k=1;
% for i=8:1:14
%    for j=1:1:9
%         values4fea(i,j) = std(down{k,j});
%         values4fea(i,j+9) = median(down{k,j});
%         values4fea(i,j+18) = mean(down{k,j});
%         values4fea(i,j+27) = rms(down{k,j});
%    end
%    k = k+1;
% end
% 
% 
% k=1;
% for i=15:1:21
%    for j=1:1:9
%         values4fea(i,j) = std(right{k,j});
%         values4fea(i,j+9) = median(right{k,j});
%         values4fea(i,j+18) = mean(right{k,j});
%         values4fea(i,j+27) = rms(right{k,j});
%    end
%    k = k+1;
% end
% 
% k=1;
% for i=22:1:28
%    for j=1:1:9
%         values4fea(i,j) = std(left{k,j});
%         values4fea(i,j+9) = median(left{k,j});
%         values4fea(i,j+18) = mean(left{k,j});
%         values4fea(i,j+27) = rms(left{k,j});
%    end
%    k = k+1;
% end
% 
% 
%  [e_idx_values4fea,C_values4fea] = kmeans(values4fea,4);








