function train_labels = set_centroid(cent,tr_idx, trainset_size, C_train_set, train_labels)
i=1;
for k=1:trainset_size:112

  tmp(k:trainset_size*i,1)=tr_idx(k:trainset_size*i)==cent;  
  i=i+1;
end 
 
i=1;
for k=1:trainset_size:112

  maxes(i,1) = sum(tmp(k:trainset_size*i)==1);
  i= i+1;
end 
    
    train_labels{find(maxes == max(maxes),1),1}=find(maxes == max(maxes), 1);
    train_labels{find(maxes == max(maxes),1),2} = C_train_set(cent,:);   
    

        
       
train_labels;


end


