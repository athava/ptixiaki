function [ signf_edges ] = significant_edges( STTCcirc )
%significant_edges Summary of this function goes here
%   Detailed explanation goes here
%   Function which finds the significant edges of a movie. The significance
%   of an edge has been decided according to 2 criteria: 
%   1.-> A pair is going to be significant if its STTC value is above 
%        a certain threshold (column 8)
%   2.-> A pair is going to be significant if the total number of spikes of
%        neuronA before neuronB spikes is above 3, as well as if the total
%        number of spikes of neuronB after neuronA is above 3.
    

sttc_signf_edges = STTCcirc(STTCcirc(:, 8) == 1,:);

aux = 1;
signf_edges = [];
for i = 1:size(sttc_signf_edges,1)
    num_spikesA = sttc_signf_edges(i,4); %total number of spikes of neuron A before neuron B spikes
    num_spikesB = sttc_signf_edges(i,5); %total number of spikes of neuron B after neuron A spikes
    if num_spikesA > 3 && num_spikesB > 3
        signf_edges(aux,:) = sttc_signf_edges(i,:);
        aux = aux + 1;
    end
end

