features_num =36;

total = length(raw_data)/4;
tr = fix((length(raw_data)/4)*(70/100));


combos = combntns(1:40,28);

p = randperm(1:160,10);

%for iter=1:1:length(combos)
for iter=1:1:100
    display(iter);
    %train_params = combos(p(iter),:);
    train_params = combos(iter,:);
    trainset_size = length(train_params);

    for i=1:1:trainset_size
        for j=1:1:features_num
            trainset(i,j) = featured_data_up((train_params(i)),j);
            trainset(i+trainset_size,j) = featured_data_down((train_params(i)),j);
            trainset(i+(trainset_size*2),j) = featured_data_left((train_params(i)),j);
            trainset(i+(trainset_size*3),j) = featured_data_right((train_params(i)),j);
        end
    end

    clearvars i j

    [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
    %vag(:,iter) = tr_idx;

    eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');

    train_labels = ['la' {C_train_set(1,:)}; 'la' {C_train_set(2,:)}; 'la' {C_train_set(3,:)}; 'la' {C_train_set(4,:)}];

    %labeling
    %                                                                                                                                                                                     
%centroid 1
    l1=0; l2=0; l3=0; l4=0;
    l1 = tr_idx == 1;
    l2 = tr_idx == 2;
    l3 = tr_idx == 3;
    l4 = tr_idx == 4;
    
    one = sum(l1(1:trainset_size)==1);
    two = sum(l1((trainset_size+1):(trainset_size*2))==1);
    three = sum(l1(((trainset_size*2)+1):(trainset_size*3))==1);
    four = sum(l1(((trainset_size*3)+1):(trainset_size*4))==1);
    
    if(max([one,two,three,four]) == one)
       train_labels{1,1}='up';
       train_labels(1,2) = {C_train_set(1,:)};
    elseif (max([one,two,three,four]) == two)
       train_labels{2,1}='down';
       train_labels(2,2) = {C_train_set(1,:)};
    elseif(max([one,two,three,four]) == three)
        train_labels{3,1}='left';
       train_labels(3,2) = {C_train_set(1,:)};
    elseif(max([one,two,three,four]) == four)
        train_labels{4,1}='right';
       train_labels(4,2) = {C_train_set(1,:)};
    end
    
    
%centroid 2
   one = sum(l2(1:trainset_size)==1);
    two = sum(l2((trainset_size+1):(trainset_size*2))==1);
    three = sum(l2(((trainset_size*2)+1):(trainset_size*3))==1);
    four = sum(l2(((trainset_size*3)+1):(trainset_size*4))==1);
    
    if(max([one,two,three,four]) == one)
       train_labels{1,1}='up';
       train_labels(1,2) = {C_train_set(2,:)};
    elseif (max([one,two,three,four]) == two)
       train_labels{2,1}='down';
       train_labels(2,2) = {C_train_set(2,:)};
    elseif(max([one,two,three,four]) == three)
        train_labels{3,1}='left';
       train_labels(3,2) = {C_train_set(2,:)};
    elseif(max([one,two,three,four]) == four)
        train_labels{4,1}='right';
       train_labels(4,2) = {C_train_set(2,:)};
    end    
    
    %centroid 3
   one = sum(l3(1:trainset_size)==1);
    two = sum(l3((trainset_size+1):(trainset_size*2))==1);
    three = sum(l3(((trainset_size*2)+1):(trainset_size*3))==1);
    four = sum(l3(((trainset_size*3)+1):(trainset_size*4))==1);
    
    if(max([one,two,three,four]) == one)
       train_labels{1,1}='up';
       train_labels(1,2) = {C_train_set(3,:)};
    elseif (max([one,two,three,four]) == two)
       train_labels{2,1}='down';
       train_labels(2,2) = {C_train_set(3,:)};
    elseif(max([one,two,three,four]) == three)
        train_labels{3,1}='left';
       train_labels(3,2) = {C_train_set(3,:)};
    elseif(max([one,two,three,four]) == four)
        train_labels{4,1}='right';
       train_labels(4,2) = {C_train_set(3,:)};
    end
    
%centroid 4    
   one = sum(l4(1:trainset_size)==1);
    two = sum(l4((trainset_size+1):(trainset_size*2))==1);
    three = sum(l4(((trainset_size*2)+1):(trainset_size*3))==1);
    four = sum(l4(((trainset_size*3)+1):(trainset_size*4))==1);
    
    if(max([one,two,three,four]) == one)
       train_labels{1,1}='up';
       train_labels(1,2) = {C_train_set(4,:)};
    elseif (max([one,two,three,four]) == two)
       train_labels{2,1}='down';
       train_labels(2,2) = {C_train_set(4,:)};
    elseif(max([one,two,three,four]) == three)
        train_labels{3,1}='left';
       train_labels(3,2) = {C_train_set(4,:)};
    elseif(max([one,two,three,four]) == four)
        train_labels{4,1}='right';
       train_labels(4,2) = {C_train_set(4,:)};
    end
   


     %TEST



    test_params = setdiff([1:total], combos(iter,:));
    testset_size = length(test_params);

     for i=1:1:testset_size
        for j=1:1:features_num
            testset(i,j) = featured_data_up(test_params(i),j);
            testset(i+testset_size,j) = featured_data_down(test_params(i),j);
            testset(i+(testset_size*2),j) = featured_data_left(test_params(i),j);
            testset(i+(testset_size*3),j) = featured_data_right(test_params(i),j);
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
    %vag_test(:,iter) = miins_position;
    results(iter,1) = (right_clust/(right_clust+wrong_clust))*100;
end

result_mean = mean(results)

clearvars right_clust wrong_clust  i j distances mymin thesi temp trainset_size  testset_size l1 l2 l3 l4 iter C_train_set test_params testset tr_idx train_labels train_params trainset eval_train 
clearvars one two three four total tr results miins_position combos 