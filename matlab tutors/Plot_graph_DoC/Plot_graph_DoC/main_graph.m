% Load the propriate biological data for a specific animal 
load('Biological_data/saad16_003');

% Load the representation of the graph, an array that each row represents a 
% connection between the neuron with the id of the first column and the neuron 
% with id of the second column
load('Network_representation/connected_neurons');

% Define the neurons (assign an id)
neurons_id = 1:size(psm_avalanche,2);


% Create the connection matrix, a cell (m,n) in this matrix takes value 1 when
% there is a connection between neurons with ids m and n.
% Connection matrix represents the network graph based on the connections
% that appears among the neurons
for i = 1:size(connected_neurons,1)
    conn_matrix(connected_neurons(i,1),connected_neurons(i,2)) = 1;    
end

% Plot the graph 
plot_graph(connected_neurons, neurons_id, com_x,com_y)

% Estimate the degree of connectivity for each neuron
[degree,mean_degree,neurons_hub]=DoC(conn_matrix)

% Estimate and plot the CDF of the degree of connectivity of the neurons
[cdf_degree,x] = ecdf(degree);
%%
figure;
plot(x,cdf_degree, 'Linewidth', 2);
grid on
xlabel('DoC')
ylabel('CDF')
set(gca, 'Fontsize', 18)
%%
% Plot CDF in different axes scales 
% x-linear, y-log
figure 
semilogy(x,cdf_degree, 'Linewidth', 2);
grid on
xlabel('DoC')
ylabel('CDF (log scale)')
set(gca, 'Fontsize', 18)

% x-log, y-linear
figure 
semilogx(x,cdf_degree, 'Linewidth', 2);
grid on
xlabel('DoC (log scale)')
ylabel('CDF')
set(gca, 'Fontsize', 18)

% x-log, y-log
figure
loglog(x,cdf_degree, 'Linewidth', 2);
grid on
xlabel('DoC (log scale)')
ylabel('CDF (log scale)')
set(gca, 'Fontsize', 18)

% Statistics on the degree of connectivity
Min_degree = min(degree)
Max_degree = max(degree)
Mean_degree = mean(degree)
Median_degree = median(degree)

%%
% Plot a histogram of the degree of connectivity
figure
hist(degree)
xlabel('DoC')
ylabel('CDF')
set(gca, 'Fontsize', 18)


