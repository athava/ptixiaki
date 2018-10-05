function actual_axes = make_pitch(raw_data) %x

    for i = 1:1:length(raw_data)
        for j=1:1:size(raw_data{1,i}{1,2},1)
           pitch_acc{1,i}(j,1)=  (180/pi)*atan(raw_data{1,i}{1,1}(j,1)/raw_data{1,i}{1,2}(j,1)); 
         end
    end
    
     for i = 1:1:length(raw_data)
        actual_axes{1,i}{1,1}(1,1) =  0.98*((raw_data{1,i}{1,9}(1,1))*0.04) + 0.02*(pitch_acc{1,i}(1,1));
        for j=2:1:size(raw_data{1,i}{1,9},1)
            actual_axes{1,i}{1,1}(j,1)=0.98*(pitch_acc{1,i}(j-1,1) + (raw_data{1,i}{1,9}(j,1))*0.04)  + 0.02*(pitch_acc{1,i}(j,1));
         end
    end
    
end