%% TRAINING
fid = fopen('20180317164502UP.dat','r');
up_tr(1,:) = textscan(fid, '%*f %f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164519UP.dat','r');
up_tr(2,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164532UP.dat','r');
up_tr(3,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164549UP.dat','r');
up_tr(4,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164607UP.dat','r');
up_tr(5,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164623UP.dat','r');
up_tr(6,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164636UP.dat','r');
up_tr(7,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);
 %%%%%%%%%%%%%%
fid = fopen('20180317164955DOWN.dat','r');
down_tr(1,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165005DOWN.dat','r');
down_tr(2,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165017DOWN.dat','r');
down_tr(3,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165031DOWN.dat','r');
down_tr(4,:) = textscan(fid, '%f	%*f	%*f	%f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165047DOWN.dat','r');
down_tr(5,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165105DOWN.dat','r');
down_tr(6,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165114DOWN.dat','r');
down_tr(7,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);
 %%%%%%%%%%%%
 fid = fopen('20180317165827RIGHT.dat','r');
right_tr(1,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165840RIGHT.dat','r');
right_tr(2,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165851RIGHT.dat','r');
right_tr(3,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165931RIGHT.dat','r');
right_tr(4,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165941RIGHT.dat','r');
right_tr(5,:) = textscan(fid, '%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165952RIGHT.dat','r');
right_tr(6,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317170009RIGHT.dat','r');
right_tr(7,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);
 
%%%%%%%%%%%%%%%%
fid = fopen('20180317165317LEFT.dat','r');
left_tr(1,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165327LEFT.dat','r');
left_tr(2,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165337LEFT.dat','r');
left_tr(3,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165350LEFT.dat','r');
left_tr(4,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165419LEFT.dat','r');
left_tr(5,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165432LEFT.dat','r');
left_tr(6,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165455LEFT.dat','r');
left_tr(7,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

%%  TESTING


fid = fopen('20180317164808UP.dat','r');
up_test(1,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164757UP.dat','r');
up_test(2,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164716UP.dat','r');
up_test(3,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);


%%%%%%%%%%%%%%%%%%%%

fid = fopen('20180317165155DOWN.dat','r');
down_test(1,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165146DOWN.dat','r');
down_test(2,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165123DOWN.dat','r');
down_test(3,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);


%%%%%%%%%%%%%%%%%%%

fid = fopen('20180317170106RIGHT.dat','r');
right_test(1,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317170047RIGHT.dat','r');
right_test(2,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317170036RIGHT.dat','r');
right_test(3,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);


%%%%%%%%%%%%%%%%%%%%%

fid = fopen('20180317165601LEFT.dat','r');
left_test(1,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165544LEFT.dat','r');
left_test(2,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165523LEFT.dat','r');
left_test(3,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);
















