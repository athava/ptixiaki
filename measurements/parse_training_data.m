%%
fid = fopen('20180317164502UP.dat','r');
up(1,:) = textscan(fid, '%*f %f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164519UP.dat','r');
up(2,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164532UP.dat','r');
up(3,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164549UP.dat','r');
up(4,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164607UP.dat','r');
up(5,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164623UP.dat','r');
up(6,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317164636UP.dat','r');
up(7,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);
 %%%%%%%%%%%%%%
fid = fopen('20180317164955DOWN.dat','r');
down(1,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165005DOWN.dat','r');
down(2,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165017DOWN.dat','r');
down(3,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165031DOWN.dat','r');
down(4,:) = textscan(fid, '%f	%*f	%*f	%f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165047DOWN.dat','r');
down(5,:) = textscan(fid, '%*f	%f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165105DOWN.dat','r');
down(6,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165114DOWN.dat','r');
down(7,:) = textscan(fid, '%*f	%f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);
 %%%%%%%%%%%%
 fid = fopen('20180317165827RIGHT.dat','r');
right(1,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165840RIGHT.dat','r');
right(2,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165851RIGHT.dat','r');
right(3,:) = textscan(fid, '%*f	%f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165931RIGHT.dat','r');
right(4,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165941RIGHT.dat','r');
right(5,:) = textscan(fid, '%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165952RIGHT.dat','r');
right(6,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317170009RIGHT.dat','r');
right(7,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%*f	%f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);
 
%%%%%%%%%%%%%%%%
fid = fopen('20180317165317LEFT.dat','r');
left(1,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165327LEFT.dat','r');
left(2,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%*f	%f	%*f	%f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165337LEFT.dat','r');
left(3,:) = textscan(fid, '%f	%*f	%f	%*f	%f	%*f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165350LEFT.dat','r');
left(4,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165419LEFT.dat','r');
left(5,:) = textscan(fid, '%f	%*f	%*f	%f	%f	%*f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%*f	%f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165432LEFT.dat','r');
left(6,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%f	%*f	%f	%*f	%f	%*f %*[^\n]','HeaderLines',4);
fclose(fid);

fid = fopen('20180317165455LEFT.dat','r');
left(7,:) = textscan(fid, '%f	%*f	%f	%*f	%*f	%f	%*f	%*f	%*f	%f	%*f	%*f	%f	%f	%*f	%*f	%f	%f	%*f	%*f	%f %*[^\n]','HeaderLines',4);
fclose(fid);