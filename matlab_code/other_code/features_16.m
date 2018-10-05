% features we use mean-rms-std-median
total_axes = 9; %fixed for this option
k = 1;
for i=1:1:(length(raw_data)/16)
   for j=1:1:total_axes
       %up
        featured_data_up_up(i,j) = mean(raw_data{1,k}{1,j});
        featured_data_up_up(i,j+total_axes) = rms(raw_data{1,k}{1,j});
        featured_data_up_up(i,j+(total_axes*2)) = std(raw_data{1,k}{1,j});
        featured_data_up_up(i,j+(total_axes*3)) = median(raw_data{1,k}{1,j});
        
        featured_data_up_down(i,j) = mean(raw_data{1,k+(length(raw_data)/16)}{1,j});
        featured_data_up_down(i,j+total_axes) = rms(raw_data{1,k+(length(raw_data)/16)}{1,j});
        featured_data_up_down(i,j+(total_axes*2)) = std(raw_data{1,k+(length(raw_data)/16)}{1,j});
        featured_data_up_down(i,j+(total_axes*3)) = median(raw_data{1,k+(length(raw_data)/16)}{1,j});
        
        featured_data_up_left(i,j) = mean(raw_data{1,k+((length(raw_data)/16)*2)}{1,j});
        featured_data_up_left(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/16)*2)}{1,j});
        featured_data_up_left(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/16)*2)}{1,j});
        featured_data_up_left(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/16)*2)}{1,j});
        
        featured_data_up_right(i,j) = mean(raw_data{1,k+((length(raw_data)/16)*3)}{1,j});
        featured_data_up_right(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/16)*3)}{1,j});
        featured_data_up_right(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/16)*3)}{1,j});
        featured_data_up_right(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/16)*3)}{1,j});
        
        %down
        featured_data_down_up(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down_up(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down_up(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        featured_data_down_up(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*1)}{1,j});
        
        featured_data_down_down(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*1)+(length(raw_data)/16)}{1,j});
        featured_data_down_down(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*1)+(length(raw_data)/16)}{1,j});
        featured_data_down_down(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*1)+(length(raw_data)/16)}{1,j});
        featured_data_down_down(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*1)+(length(raw_data)/16)}{1,j});
        
        featured_data_down_left(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*2)}{1,j});
        featured_data_down_left(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*2)}{1,j});
        featured_data_down_left(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*2)}{1,j});
        featured_data_down_left(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*2)}{1,j});
        
        featured_data_down_right(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*3)}{1,j});
        featured_data_down_right(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*3)}{1,j});
        featured_data_down_right(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*3)}{1,j});
        featured_data_down_right(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*1)+((length(raw_data)/16)*3)}{1,j});
        
        %left
        featured_data_left_up(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left_up(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left_up(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});
        featured_data_left_up(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*2)}{1,j});

        featured_data_left_down(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*2)+(length(raw_data)/16)}{1,j});
        featured_data_left_down(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*2)+(length(raw_data)/16)}{1,j});
        featured_data_left_down(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*2)+(length(raw_data)/16)}{1,j});
        featured_data_left_down(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*2)+(length(raw_data)/16)}{1,j});
 
        featured_data_left_left(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*2)}{1,j});
        featured_data_left_left(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*2)}{1,j});
        featured_data_left_left(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*2)}{1,j});
        featured_data_left_left(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*2)}{1,j});
        
        featured_data_left_right(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*3)}{1,j});
        featured_data_left_right(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*3)}{1,j});
        featured_data_left_right(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*3)}{1,j});
        featured_data_left_right(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*2)+((length(raw_data)/16)*3)}{1,j});
        
        %right
        featured_data_right_up(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right_up(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right_up(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        featured_data_right_up(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*3)}{1,j});
        
        featured_data_right_down(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*3)+(length(raw_data)/16)}{1,j});
        featured_data_right_down(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*3)+(length(raw_data)/16)}{1,j});
        featured_data_right_down(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*3)+(length(raw_data)/16)}{1,j});
        featured_data_right_down(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*3)+(length(raw_data)/16)}{1,j});
        
        featured_data_right_left(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*2)}{1,j});
        featured_data_right_left(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*2)}{1,j});
        featured_data_right_left(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*2)}{1,j});
        featured_data_right_left(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*2)}{1,j});
        
        featured_data_right_right(i,j) = mean(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*3)}{1,j});
        featured_data_right_right(i,j+total_axes) = rms(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*3)}{1,j});
        featured_data_right_right(i,j+(total_axes*2)) = std(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*3)}{1,j});
        featured_data_right_right(i,j+(total_axes*3)) = median(raw_data{1,k+((length(raw_data)/4)*3)+((length(raw_data)/16)*3)}{1,j});
        
        
   end
   k = k+1;
end

clearvars i j k total_axes;


for i=1:1:(length(length(raw_data)/16))
   featured_data_up_up(i,37) = sum(integral(raw_data{1,i}{1,9},0.04))*0.04;
   featured_data_up_up(i,38) = sum(integral(raw_data{1,i}{1,8},0.04))*0.04;
   
   featured_data_up_down(i,37) = sum(integral(raw_data{1,i}{1,9},0.04))*0.04;
   featured_data_up_down(i,38) = sum(integral(raw_data{1,i}{1,8},0.04))*0.04;
   
   featured_data_down_down(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,9},0.04))*0.04;
   featured_data_down(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,8},0.04))*0.04;
   
   featured_data_left(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,9},0.04))*0.04;
   featured_data_left(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,8},0.04))*0.04;
   
   featured_data_right(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,9},0.04))*0.04;
   featured_data_right(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,8},0.04))*0.04;

end






















