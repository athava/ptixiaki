features_num =36;

total = length(raw_data)/16;
tr = fix((length(raw_data)/16)*(70/100));

combos = cvpartition(10,'KFold',3)
        train_params =[3;4;5;6;7;8;10]% find(combos.training(1)== 1);

        trainset_size = length(train_params);

        for i=1:1:trainset_size
            for j=1:1:features_num
                trainset(i,j) = featured_data_up_up((train_params(i)),j);
                trainset(i+trainset_size,j) = featured_data_up_down((train_params(i)),j);
                trainset(i+(trainset_size*2),j) = featured_data_up_left((train_params(i)),j);
                trainset(i+(trainset_size*3),j) = featured_data_up_right((train_params(i)),j);
                
                trainset(i+(trainset_size*4),j) = featured_data_down_up((train_params(i)),j);
                trainset(i+(trainset_size*5),j) = featured_data_down_down((train_params(i)),j);
                trainset(i+(trainset_size*6),j) = featured_data_down_left((train_params(i)),j);
                trainset(i+(trainset_size*7),j) = featured_data_up_right((train_params(i)),j);
                
                trainset(i+(trainset_size*8),j) = featured_data_left_up((train_params(i)),j);
                trainset(i+(trainset_size*9),j) = featured_data_left_down((train_params(i)),j);
                trainset(i+(trainset_size*10),j) = featured_data_left_left((train_params(i)),j);
                trainset(i+(trainset_size*11),j) = featured_data_left_right((train_params(i)),j);
                
                trainset(i+(trainset_size*12),j) = featured_data_right_up((train_params(i)),j);
                trainset(i+(trainset_size*13),j) = featured_data_right_down((train_params(i)),j);
                trainset(i+(trainset_size*14),j) = featured_data_right_left((train_params(i)),j);
                trainset(i+(trainset_size*15),j) = featured_data_right_right((train_params(i)),j);
            end
        end

        clearvars i j

        [tr_idx,C_train_set] = kmeans(trainset,4, 'Replicates',45, 'Distance','cityblock');
        %vag(:,iter) = tr_idx;

        %eval_train = evalclusters(trainset,tr_idx,'silhouette','Distance','cityblock');
   
train_labels=zeros(4,2) ;
 %train_labels = mat2cell(train_labels, [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1 ,1, 1], [1, 1]);
 train_labels = mat2cell(train_labels, [1, 1, 1, 1,], [1, 1]);
for cent=1:1:4
	train_labels =  set_centroid(cent,tr_idx,trainset_size, C_train_set, train_labels);

end  
     