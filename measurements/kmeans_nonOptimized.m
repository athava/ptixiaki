%% first

%TRAIN
for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(i,j);
        trainset(i+7,j) = featured_data_down(i,j);
        trainset(i+14,j) = featured_data_left(i,j);
        trainset(i+21,j) = featured_data_right(i,j);
    end
end

clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
 eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];
 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(i+7,j);
        testset(i+3,j) = featured_data_down(i+7,j);
        testset(i+6,j) = featured_data_left(i+7,j);
        testset(i+9,j) = featured_data_right(i+7,j);
    end
end

clearvars i j

 [test_idx,C_test_set] = kmeans(testset,4, 'Replicates',45, 'Distance','cityblock');
 eval_test = evalclusters(testset,test_idx,'silhouette','Distance','cityblock');
 

 
 %D  = sqrt(sum((G - G2) .^ 2))
for i=1:1:4
    for j=1:1:4
        temp = [C_test_set(i,:); C_train_set(j,:)];
        distances(i,j)=  pdist(temp,'cityblock')
       %sqrt(sum((C_test_set(i,:) - C_train_set(j,:)) .^ 2))
    end
end
 x = [2 2 ; 3 3; 5 5 ];
 D3 = pdist(x(2:3,:),'cityblock')
  %% second
  
  
%TRAIN
for i=1:1:7
    for j=1:1:9
        trainset(i,j) = featured_data_up(i,j);
        trainset(i+7,j) = featured_data_down(i,j);
        trainset(i+14,j) = featured_data_left(i,j);
        trainset(i+21,j) = featured_data_right(i,j);
    end
end

clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
 eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:9
        testset(i,j) = featured_data_up(i+7,j);
        testset(i+3,j) = featured_data_down(i+7,j);
        testset(i+6,j) = featured_data_left(i+7,j);
        testset(i+9,j) = featured_data_right(i+7,j);
    end
end

clearvars i j

 [test_idx,C_test_set] = kmeans(testset,4, 'Replicates',45, 'Distance','cityblock');
 eval_test = evalclusters(testset,test_idx,'silhouette','Distance','cityblock');
 