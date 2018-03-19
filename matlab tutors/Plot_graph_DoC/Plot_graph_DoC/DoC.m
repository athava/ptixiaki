function [degree,mean_degree,neurons_hub]=DoC(conn_matrix)
%  Statistics about the degree of connectivity for the neurons of a
%  network.
%  Input:
%        conn_matrix: the connection matrix of the network
% Output:
%        degree: a vector with the degree of connectivity for each neuron
%        mean_degree: the average degree of connectivity, without
%        considering the neurons with no connection
%        neurons_hub: the id of neurons with high degree of connectivity 
% 

%get the degree of connectivity of each node
degree      = sum(conn_matrix);
mean_degree = mean(degree); 

[cdf_tot,x] = ecdf(degree);

%get the hubs of the network
hubs              = x(cdf_tot>0.90);
neurons_hub       = find(degree >= hubs(1));

end