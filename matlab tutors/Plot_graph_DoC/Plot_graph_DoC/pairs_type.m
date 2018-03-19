% Load the propriate biological data for a specific animal 
load('Biological_data/saad16_003');

% Load the representation of the graph, an array that each row represents a 
% connection between the neuron with the id of the first column and the neuron 
% with id of the second column
load('Network_representation/connected_neurons');

% Define the neurons (assign an id)
neurons_id = 1:size(psm_avalanche,2);

% Find the pyramidals ids 
pyramidals = setdiff(neurons_id, union(interneurons, astrocytes));

% Number of 

% Distinguish the type of each pair of neurons 
num_edges = size(connected_neurons,1);

% Identify different type of pairs, namely, 
% Pyramidal to pyramidal pairs (pyr_pyr)
% Pyramidal to interneuron pairs (pyr_inter)
% Interneuron to pyramidal pairs (inter_pyr)
pyr_pyr = [];
pyr_inter = [];
inter_pyr = [];
other = [];

for i = 1:num_edges
    if (ismember(connected_neurons(i,1), pyramidals) && ismember(connected_neurons(i,2), pyramidals))
        pyr_pyr = [i pyr_pyr];
    elseif ( ismember(connected_neurons(i,1), pyramidals) && ismember(connected_neurons(i,2), interneurons))
        pyr_inter = [i pyr_inter];
    elseif (ismember(connected_neurons(i,1), interneurons) && ismember(connected_neurons(i,2), pyramidals))
        inter_pyr = [i inter_pyr];
    else
        other = [i other];
    end
end


% Find the absolute number of each type of pairs, considering the number of
% connections

num_pyr_pyr = length(pyr_pyr);
num_pyr_inter = length(pyr_inter);
num_inter_pyr = length(inter_pyr);

% Find the percentages of each type of pairs, considering the number of
% connections
per_pyr_pyr = (num_pyr_pyr / num_edges) * 100;
per_pyr_inter = (num_pyr_inter / num_edges) *100;
per_inter_pyr = (num_inter_pyr / num_edges) * 100;

tot_per = [per_pyr_pyr per_pyr_inter per_inter_pyr];



% tot_per = [per_pyr_pyr per_pyr_inter per_inter_pyr];