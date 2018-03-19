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

% Estimate the degree of connectivity for each neuron
[degree,mean_degree,neurons_hub]=DoC(conn_matrix);

%Find the pyramidals ids 
pyramidals = setdiff(neurons_id, union(interneurons, astrocytes));

% Degree for pyramidals 
pyr_degree = degree(pyramidals);

% Degree for interneurons 
inter_degree = degree(interneurons);

% Degree for astrocytes
astro_degree = degree(astrocytes);

% Estimate the CDFs 
[f_pyr, x_pyr] = ecdf(pyr_degree);
[f_inter, x_inter] = ecdf(inter_degree);
[f_astroc, x_astroc] = ecdf(astro_degree);

% Plot the CDFs
figure 
plot(x_pyr, f_pyr,'Linewidth', 1.5)
hold on 
grid on 
plot(x_inter, f_inter, 'r', 'Linewidth', 1.5)
plot(x_astroc, f_astroc, 'k', 'Linewidth', 1.5)
xlabel('DoC')
ylabel('CDF')
set(gca, 'Fontsize', 18)
legend('Pyramidals', 'Interneurons', 'Astrocytes')


