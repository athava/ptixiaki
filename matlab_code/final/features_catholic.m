total_axes = 9; %fixed for this option
features = [];
for i=1:1:(length(raw_data))
   for j=1:1:total_axes
       %up
        features(i,j) = mean(raw_data{1,i}{1,j});
        features(i,j+total_axes) = rms(raw_data{1,i}{1,j});
        features(i,j+(total_axes*2)) = std(raw_data{1,i}{1,j});
        features(i,j+(total_axes*3)) = median(raw_data{1,i}{1,j});
  
   end

end


clearvars i j k total_axes;
%%
% only if we want to add two extra features
for i=1:1:(length(raw_data))
   features(i,73) = sum(integral(raw_data{1,i}{1,9},0.04))*0.04;
   features(i,74) = sum(integral(raw_data{1,i}{1,8},0.04))*0.04;
end

