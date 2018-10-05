% features we use mean-rms-std-median
total_axes = 9; %fixed for this option
k = 1;
for i=1:1:(length(raw_data)/4)
   for j=1:1:total_axes
        featured_data_up(i,j) = mean(raw_data{1,k}{1,j});
        featured_data_up(i,j+total_axes) = rms(raw_data{1,k}{1,j});
        featured_data_up(i,j+(total_axes*2)) = std(raw_data{1,k}{1,j});
        featured_data_up(i,j+(total_axes*3)) = median(raw_data{1,k}{1,j});
        
        featured_data_down(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        
        featured_data_left(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        
        featured_data_right(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        
        
   end
   k = k+1;
end

clearvars i j k total_axes;



% %% normilization
% 
% for i=1:1:size(featured_data_up,2)
%    featured_data_up(:,i) = (featured_data_up(:,i) - min(featured_data_up(:,i)))/(max(featured_data_up(:,i)) - min(featured_data_up(:,i))); 
%    featured_data_down(:,i) = (featured_data_down(:,i) - min(featured_data_down(:,i)))/(max(featured_data_down(:,i)) - min(featured_data_down(:,i))); 
%    featured_data_left(:,i) = (featured_data_left(:,i) - min(featured_data_left(:,i)))/(max(featured_data_left(:,i)) - min(featured_data_left(:,i))); 
%    featured_data_right(:,i) = (featured_data_right(:,i) - min(featured_data_right(:,i)))/(max(featured_data_right(:,i)) - min(featured_data_right(:,i))); 
% end
% 




















