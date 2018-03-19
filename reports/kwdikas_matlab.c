
%accelerometer

fid = fopen('ACCEL-NO.dat','r');
data = textscan(fid, '%f %*f %f %*f %f %*[^\n]','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);
title('no change in velocity');
ylabel('acceleration m/s^2');
xlabel('time');
%%%%%
fid = fopen('ACCEL-YES.dat','r');
data = textscan(fid, '%f %*f %f %*f %f %*[^\n]','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);
title('change in velocity');
ylabel('acceleration m/s^2');
xlabel('time');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%gyroscope

fid = fopen('GYR-NO.dat','r');
data = textscan(fid, '%*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %f %*f %f %*f %f %*f','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);
title('no rotation in the movement');
ylabel('deg/s');
xlabel('time');
%%%%%
fid = fopen('GYR-YES.dat','r');
data = textscan(fid, '%*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %*f %f %*f %f %*f %f %*f','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);

title('rotation over z and y axes in the movement');
ylabel('deg/s');
xlabel('time');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%magnetometer

fid = fopen('MAG-NORTH.dat','r');
data = textscan(fid, '%*f %*f %*f %*f %*f %*f %*f %*f %*f %f %*f %f %*f %f %*[^\n]','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);
title('moving towards north');
ylabel('local flux');
xlabel('time');
%%%%%
fid = fopen('MAG-SOUTH.dat','r');
data = textscan(fid, '%*f %*f %*f %*f %*f %*f %*f %*f %*f %f %*f %f %*f %f %*[^\n]','HeaderLines',4);
fclose(fid);

x=normc([data{1},data{2},data{3}]);
figure;plot(x,'DisplayName','x');
axis([0 700 -1 1]);
title('moving towards south');
ylabel('local flux');
xlabel('time');