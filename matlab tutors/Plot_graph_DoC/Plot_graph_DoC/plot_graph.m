%function plot_graph(signf_edges_comp,nodes,com_x,com_y)
%  Produces a plot that represents the graph, considering the coordinates
%  of each neuron.
%  Input:
%        signf_edges_comp: the significant of the network (based on the STTC)
%        nodes: ids of the nodes
%        com_x,com_y: the coordinates of each neuron
% Output:
%     Plot of the graph   
%      
figure;

x = [com_x(signf_edges_comp(:,1)), com_x(signf_edges_comp(:,2))];
y = [com_y(signf_edges_comp(:,1)), com_y(signf_edges_comp(:,2))];
plot(x,y,'b');hold on;

red = [204 0 0]./255;
scatter(com_x(nodes),com_y(nodes),'MarkerEdgeColor',red,'MarkerFaceColor','r');

title('');
set(gca,'FontSize',16);

