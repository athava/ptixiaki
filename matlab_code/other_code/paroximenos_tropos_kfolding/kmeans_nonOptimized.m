% first
%  p = randperm(35,28);
% featured_data_down = featured_data_down(randperm(size(featured_data_down,1)),:);
% featured_data_left = featured_data_left(randperm(size(featured_data_left,1)),:);
% featured_data_right = featured_data_right(randperm(size(featured_data_right,1)),:);
% featured_data_up = featured_data_up(randperm(size(featured_data_up,1)),:);
% 


%TRAIN

trainset_size = 5;

for i=1:1:trainset_size
    for j=1:1:36
        trainset(i,j) = featured_data_up(i,j);
        trainset(i+trainset_size,j) = featured_data_down(i,j);
        trainset(i+(trainset_size*2),j) = featured_data_left(i,j);
        trainset(i+(trainset_size*3),j) = featured_data_right(i,j);
    end
end

clearvars i j

[tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');

eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
 
train_labels = ['la' {C_train_set(1,:)}; 'la' {C_train_set(2,:)}; 'la' {C_train_set(3,:)}; 'la' {C_train_set(4,:)}];

%label up cluster
%se poio arithmo sigkentronontai ta perisotera apo thn up kinisi 
l1=0; l2=0; l3=0; l4=0;
for i=1:1:trainset_size
    if(tr_idx(i,1) == 1)
        l1=l1+1;
    elseif (tr_idx(i,1) == 2)
        l2=l2+1;
    elseif(tr_idx(i,1) == 3)
        l3=l3+1;
    else
        l4=l4+1;
    end
end

%onomazw up to sigkekrimeno centroid
if(l1 == max([l1,l2,l3,l4]))
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (l2 == max([l1,l2,l3,l4]))
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(l3 == max([l1,l2,l3,l4]))
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end

%label down cluster
l1=0; l2=0; l3=0; l4=0;
for i=(trainset_size+1):1:(trainset_size*2) 
    if(tr_idx(i,1) == 1)
        l1=l1+1;
    elseif (tr_idx(i,1) == 2)
        l2=l2+1;
    elseif(tr_idx(i,1) == 3)
        l3=l3+1;
    else
        l4=l4+1;
    end
end

if(l1 == max([l1,l2,l3,l4]))
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (l2 == max([l1,l2,l3,l4]))
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(l3 == max([l1,l2,l3,l4]))
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

%label left cluster
l1=0; l2=0; l3=0; l4=0;
for i=(trainset_size*2)+1:1:(trainset_size*3) 
    if(tr_idx(i,1) == 1)
        l1=l1+1;
    elseif (tr_idx(i,1) == 2)
        l2=l2+1;
    elseif(tr_idx(i,1) == 3)
        l3=l3+1;
    else
        l4=l4+1;
    end
end

if(l1 == max([l1,l2,l3,l4]))
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (l2 == max([l1,l2,l3,l4]))
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(l3 == max([l1,l2,l3,l4]))
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

%label left cluster
l1=0; l2=0; l3=0; l4=0;
for i=(trainset_size*3)+1:1:(trainset_size*4)
    if(tr_idx(i,1) == 1)
        l1=l1+1;
    elseif (tr_idx(i,1) == 2)
        l2=l2+1;
    elseif(tr_idx(i,1) == 3)
        l3=l3+1;
    else
        l4=l4+1;
    end
end

if(l1 == max([l1,l2,l3,l4]))
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif(l2 == max([l1,l2,l3,l4]))
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(l3 == max([l1,l2,l3,l4]))
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end

 
 
 %TEST
 
 testset_size = 2
 
 for i=1:1:testset_size
    for j=1:1:36
        testset(i,j) = featured_data_up(i+trainset_size,j);
        testset(i+testset_size,j) = featured_data_down(i+trainset_size,j);
        testset(i+(testset_size*2),j) = featured_data_left(i+trainset_size,j);
        testset(i+(testset_size*3),j) = featured_data_right(i+trainset_size,j);
    end
end

clearvars i j

for i=1:1:size(testset,1)
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:size(testset,1)
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:size(testset,1)
   if(miins_position(i,1) == 1 && i<=testset_size)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>testset_size && i<=(testset_size*2))
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>(testset_size*2) && i<=(testset_size*3))
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>(testset_size*3) && i<=(testset_size*4))
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

first_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp trainset_size  testset_size l1 l2 l3 l4 

 %% second set
 clearvars eval_train C_train_set testset tr_idx train_labels trainset

%TRAIN

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(i+3,j);
        trainset(i+7,j) = featured_data_down(i+3,j);
        trainset(i+14,j) = featured_data_left(i+3,j);
        trainset(i+21,j) = featured_data_right(i+3,j);
    end
end


clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
 eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
 

 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end



%TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(i,j);
        testset(i+3,j) = featured_data_down(i,j);
        testset(i+6,j) = featured_data_left(i,j);
        testset(i+9,j) = featured_data_right(i,j);
    end
end

clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

second_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp

%% third set

 clearvars eval_train C_train_set testset tr_idx train_labels trainset

%TRAIN

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(i+3,j);
        trainset(i+7,j) = featured_data_down(i+1,j);
        trainset(i+14,j) = featured_data_left(i+2,j);
        trainset(i+21,j) = featured_data_right(i+3,j);
    end
end


clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
 eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
 

 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end



%TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(i+3,j);
    end
 end

 for j=1:1:36
        testset(4,j) = featured_data_down(1,j);
        testset(5,j) = featured_data_down(9,j);
        testset(6,j) = featured_data_down(10,j);
 end

 for j=1:1:36
        testset(7,j) = featured_data_left(1,j);
        testset(8,j) = featured_data_left(2,j);
        testset(9,j) = featured_data_left(10,j);
 end

  for j=1:1:36
        testset(10,j) = featured_data_right(1,j);
        testset(11,j) = featured_data_right(2,j);
        testset(12,j) = featured_data_right(3,j);
 end
 
clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

third_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp

%% forth
 clearvars eval_train C_train_set testset tr_idx train_labels trainset

train_params = [1 2 3 5 10 9 8];
test_params = [7 6 4];

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(train_params(i),j);
        trainset(i+7,j) = featured_data_down(train_params(i),j);
        trainset(i+14,j) = featured_data_left(train_params(i),j);
        trainset(i+21,j) = featured_data_right(train_params(i),j);
    end
end



clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');

eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');


 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end

 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(test_params(i),j);
        testset(i+3,j) = featured_data_down(test_params(i),j);
        testset(i+6,j) = featured_data_left(test_params(i),j);
        testset(i+9,j) = featured_data_right(test_params(i),j);
    end
end

clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

forth_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp


%% fifth
 clearvars eval_train C_train_set testset tr_idx train_labels trainset

train_params = [6 2 1 3 10 9 8];
test_params = [7 5 4];

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(train_params(i),j);
        trainset(i+7,j) = featured_data_down(train_params(i),j);
        trainset(i+14,j) = featured_data_left(train_params(i),j);
        trainset(i+21,j) = featured_data_right(train_params(i),j);
    end
end



clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');

eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');


 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end

 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(test_params(i),j);
        testset(i+3,j) = featured_data_down(test_params(i),j);
        testset(i+6,j) = featured_data_left(test_params(i),j);
        testset(i+9,j) = featured_data_right(test_params(i),j);
    end
end

clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

fifth_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp


%% six 


 clearvars eval_train C_train_set testset tr_idx train_labels trainset

train_params = [7 4 2 5 10 9 8];
test_params = [6 3 1];

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(train_params(i),j);
        trainset(i+7,j) = featured_data_down(train_params(i),j);
        trainset(i+14,j) = featured_data_left(train_params(i),j);
        trainset(i+21,j) = featured_data_right(train_params(i),j);
    end
end



clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');

eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');


 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end

 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(test_params(i),j);
        testset(i+3,j) = featured_data_down(test_params(i),j);
        testset(i+6,j) = featured_data_left(test_params(i),j);
        testset(i+9,j) = featured_data_right(test_params(i),j);
    end
end

clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

sixth_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp

%% seven

 clearvars eval_train C_train_set testset tr_idx train_labels trainset

train_params = [1 7 4 10 3 9 2];
test_params = [5 6 8];

for i=1:1:7
    for j=1:1:36
        trainset(i,j) = featured_data_up(train_params(i),j);
        trainset(i+7,j) = featured_data_down(train_params(i),j);
        trainset(i+14,j) = featured_data_left(train_params(i),j);
        trainset(i+21,j) = featured_data_right(train_params(i),j);
    end
end



clearvars i j

 [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');

eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');


 
train_labels = ['up' {C_train_set(1,:)}; 'down' {C_train_set(2,:)}; 'left' {C_train_set(3,:)}; 'right' {C_train_set(4,:)}];

if(tr_idx(1,1) == 1)
   train_labels{1,1}='up';
   train_labels(1,2) = {C_train_set(1,:)};  
elseif (tr_idx(1,1) == 2)
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(2,:)};
elseif(tr_idx(1,1) == 3)
   train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(3,:)}; 
else
    train_labels{1,1}='up';
    train_labels(1,2) = {C_train_set(4,:)};
end


if(tr_idx(8,1) == 1)
   train_labels{2,1}='down';
   train_labels(2,2) = {C_train_set(1,:)};  
elseif (tr_idx(8,1) == 2)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(2,:)};
elseif(tr_idx(8,1) == 3)
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(3,:)}; 
else
    train_labels{2,1}='down';
    train_labels(2,2) = {C_train_set(4,:)};
end

if(tr_idx(15,1) == 1)
   train_labels{3,1}='left';
   train_labels(3,2) = {C_train_set(1,:)};  
elseif (tr_idx(15,1) == 2)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(2,:)};
elseif(tr_idx(15,1) == 3)
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(3,:)}; 
else
    train_labels{3,1}='left';
    train_labels(3,2) = {C_train_set(4,:)};
end

if(tr_idx(22,1) == 1)
   train_labels{4,1}='right';
   train_labels(4,2) = {C_train_set(1,:)};  
elseif (tr_idx(22,1) == 2)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(2,:)};
elseif(tr_idx(22,1) == 3)
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(3,:)}; 
else
    train_labels{4,1}='right';
    train_labels(4,2) = {C_train_set(4,:)};
end

 
 
 %TEST
 
 
 for i=1:1:3
    for j=1:1:36
        testset(i,j) = featured_data_up(test_params(i),j);
        testset(i+3,j) = featured_data_down(test_params(i),j);
        testset(i+6,j) = featured_data_left(test_params(i),j);
        testset(i+9,j) = featured_data_right(test_params(i),j);
    end
end

clearvars i j

for i=1:1:12
    for j=1:1:4
        temp = [testset(i,:); train_labels{j,2}];
        distances(i,j)=  pdist(temp,'cityblock');
    end
end
clearvars i j

for i= 1:1:12
    mymin = distances(i,1);
    thesi = 1;
  for j=2:1:4
    if(distances(i,j)< mymin )
        mymin = distances(i,j);
        thesi = j;
    end
  end
  miins_position(i,1) = thesi;
end


right_clust=0;
wrong_clust=0;
for i= 1:1:12
   if(miins_position(i,1) == 1 && i<4)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 2 && i>3 && i<7)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 3 && i>6 && i<10)
        right_clust = right_clust+1;
   elseif(miins_position(i,1) == 4 && i>9 && i<=12)
        right_clust = right_clust+1;
   else
       wrong_clust = wrong_clust+1;
   end
end

seventh_result = (right_clust/(right_clust+wrong_clust))*100
 
clearvars right_clust wrong_clust miins_position i j distances mymin thesi temp
