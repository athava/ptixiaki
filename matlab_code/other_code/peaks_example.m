figure;
plot(raw_data{1,1}{1,1});
hold on;
plot(raw_data{1,1}{1,2});
hold on;
plot(raw_data{1,1}{1,3});

Y = peak2peak(A)
Y = peak2peak(raw_data{1,1}{1,2})

[pks,locs,w,p] = findpeaks(raw_data{1,1}{1,1});

[pks2,locs2] = findpeaks(raw_data{1,1}{1,2});

A = cell2mat(raw_data{1,1});

R = corrcoef(A);
corrplot(A);

r = xcorr(raw_data{1,1}{1,2});
figure;
plot(r);

%%
a=18;
features = [featured_data_up, repmat(1,a,1); featured_data_down,repmat(2,a,1); featured_data_left, repmat(3,a,1); featured_data_right, repmat(4,a,1)];

R = corrcoef(features);
find(min(abs(R(39,1:38))))

    featured_data_up(:,16)= 0;
    featured_data_down(:,16)= 0;
    featured_data_left(:,16)= 0;
    featured_data_right(:,16)= 0;



for i=1:1:36
   if(R(37,i) < 0.3 && R(37,i) > -0.3) 
       featured_data_up(:,i)= 0;
       featured_data_down(:,i)= 0;
       featured_data_left(:,i)= 0;
       featured_data_right(:,i)= 0;
   end
end

featured_data_up( :, ~any(featured_data_up,1) ) = []; %delete empty cols
featured_data_down( :, ~any(featured_data_down,1) ) = [];
featured_data_left( :, ~any(featured_data_left,1) ) = [];
featured_data_right( :, ~any(featured_data_right,1) ) = [];