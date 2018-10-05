
function actual_axes = make_yaw(raw_data)%z

     for i = 1:1:length(raw_data)
        for j=1:1:size(raw_data{1,i}{1,9},1)
            actual_axes{1,i}{1,3}(j,1)= (raw_data{1,i}{1,9}(j,1))*0.04 ;
        end
     end
     
end