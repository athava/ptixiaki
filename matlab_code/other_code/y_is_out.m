
for i = 1:1:length(raw_data)
    raw_data{1,i}{1,3}=[];
    raw_data{1,i}{1,6} = [];
	raw_data{1,i}{1,7} = [];
end


for k = 1:1:length(raw_data)
    n=1;
    for i = 1:9
        if(~isempty( raw_data{1,k}{1,i}))
            newdata{1,k}{1,n} = raw_data{1,k}{1,i};
            n = n+1;
        end
    end   
end

clearvars raw_data;
raw_data = newdata;
clearvars newdata i k n;
%%

total_axes = 9;
k = 1;
for i=1:1:(length(raw_data)/4)
   for j=1:1:total_axes
        featured_data_up(i,j) = mean(raw_data{1,k}{1,j});
        featured_data_up(i,j+total_axes) = rms(raw_data{1,k}{1,j});
        featured_data_up(i,j+(total_axes*2)) = std(raw_data{1,k}{1,j});
        featured_data_up(i,j+(total_axes*3)) = median(raw_data{1,k}{1,j});
       
        
        %c((sum(integral(raw_data{1,}{1,9},0.04))*0.04), (sum(integral(tmp$G_Z,0.04))*0.04));
        
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

for i=1:1:(length(raw_data)/4)
   featured_data_up(i,37) = sum(integral(raw_data{1,i}{1,9},0.04))*0.04;
   featured_data_up(i,38) = sum(integral(raw_data{1,i}{1,8},0.04))*0.04;
   
   featured_data_down(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,9},0.04))*0.04;
   featured_data_down(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,8},0.04))*0.04;
   
   featured_data_left(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,9},0.04))*0.04;
   featured_data_left(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,8},0.04))*0.04;
   
   featured_data_right(i,37) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,9},0.04))*0.04;
   featured_data_right(i,38) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,8},0.04))*0.04;

end

features = [featured_data_up; featured_data_down; featured_data_left; featured_data_right;];
% csvwrite('gia_vasili.csv',features);





featured_data_up2 = (featured_data_up - min(featured_data_up))/(max(featured_data_up) - min(featured_data_up));
% 
% aa = integral(raw_data{1,1}{1,9},0.04);
% 
% figure;
% plot(aa);
% 
% 
% clearvars i j k total_axes;
% 
% 
% find(featured_data_left(:,38) < 0);
% figure;
% plot(featured_data_up(:,38));
% 
% 
% integral(raw_data{1,1}{1,9},0.04)
% 
%%

for i=1:1:(length(raw_data)/4)
   featured_data_up(i,1) = sum(integral(raw_data{1,i}{1,9},0.04))*0.04;
   featured_data_up(i,2) = sum(integral(raw_data{1,i}{1,8},0.04))*0.04;
   featured_data_up(i,3) = std(raw_data{1,i}{1,1});
   featured_data_up(i,4) = std(raw_data{1,i}{1,2});
   featured_data_up(i,5) = std(raw_data{1,i}{1,8});
   featured_data_up(i,6) = std(raw_data{1,i}{1,9});


   featured_data_down(i,1) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,9},0.04))*0.04;
   featured_data_down(i,2) = sum(integral(raw_data{1,i+((length(raw_data)/4)*1)}{1,8},0.04))*0.04;
   featured_data_down(i,3) = std(raw_data{1,i+((length(raw_data)/4)*1)}{1,1});
   featured_data_down(i,4) = std(raw_data{1,i+((length(raw_data)/4)*1)}{1,2});
   featured_data_down(i,5) = std(raw_data{1,i+((length(raw_data)/4)*1)}{1,8});
   featured_data_down(i,6) = std(raw_data{1,i+((length(raw_data)/4)*1)}{1,9});

   featured_data_left(i,1) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,9},0.04))*0.04;
   featured_data_left(i,2) = sum(integral(raw_data{1,i+((length(raw_data)/4)*2)}{1,8},0.04))*0.04;
   featured_data_left(i,3) = std(raw_data{1,i+((length(raw_data)/4)*2)}{1,1});
   featured_data_left(i,4) = std(raw_data{1,i+((length(raw_data)/4)*2)}{1,2});
   featured_data_left(i,5) = std(raw_data{1,i+((length(raw_data)/4)*2)}{1,8});
   featured_data_left(i,6) = std(raw_data{1,i+((length(raw_data)/4)*2)}{1,9});
   
   featured_data_right(i,1) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,9},0.04))*0.04;
   featured_data_right(i,2) = sum(integral(raw_data{1,i+((length(raw_data)/4)*3)}{1,8},0.04))*0.04;
   featured_data_right(i,3) = std(raw_data{1,i+((length(raw_data)/4)*3)}{1,1}); 
   featured_data_right(i,4) = std(raw_data{1,i+((length(raw_data)/4)*3)}{1,2}); 
   featured_data_right(i,5) = std(raw_data{1,i+((length(raw_data)/4)*3)}{1,8}); 
   featured_data_right(i,6) = std(raw_data{1,i+((length(raw_data)/4)*3)}{1,9}); 
end

clearvars i;




Indices = crossvalind('Kfold',featured_data_right, 28)

c = cvpartition(160,'KFold',10);
c.training(5)
























