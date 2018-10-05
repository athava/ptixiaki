features_num =36; %kata antistixeia me thn pliroforia apo to features catholic 
num_of_rep_for_movement = 15; %to xreazomaste gia na vroume to plithos gia to train kai test set
clusters_num = 4; %set cluster num 4 or 16 analoga me to se poses kiniseis theme na omadopoihsoume ta dedomena

%traning_set_num = length(raw_data)/num_of_set_for_movement;
combos = cvpartition(num_of_rep_for_movement,'KFold',3);

train_params = find(combos.training(1)== 1);
trainset_size = length(train_params);


c=1;
for i = 1:num_of_rep_for_movement: length(raw_data)
    for j=i:1:trainset_size+i-1
        for k=1:1:features_num
            trainset(c,k) = features((train_params(j-i+1)+i-1),k);
        end
        c=c+1;
    end
end

clearvars k j i features_num combos c num_of_rep_for_movement train_params 

[tr_idx,C_train_set] = kmeans(trainset,clusters_num, 'Replicates',45, 'Distance','cityblock');

train_labels=zeros(clusters_num,2) ;

if(clusters_num==16)
    train_labels = mat2cell(train_labels, [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1 ,1, 1], [1, 1]);
elseif(clusters_num==4)
    train_labels = mat2cell(train_labels, [1, 1, 1, 1,], [1, 1]);
end


for cent=1:1:clusters_num
	train_labels =  set_centroid(cent,tr_idx,trainset_size, C_train_set, train_labels);
end

 act = get_actual_axes(raw_data);