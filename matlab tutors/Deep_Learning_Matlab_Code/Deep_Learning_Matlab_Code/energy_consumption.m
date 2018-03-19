%% estimate the energy use of a building from time and weather conditions
%       1-10. Coded day of week, time of day
%       11. Temperature
%       12. Humidity
%       13. Solar strength
%       14. Wind

load building_dataset;

X = buildingInputs;
Y = buildingTargets;

% 10-fold cross-validation
cv = cvpartition(length(buildingTargets),'KFold', 10);

% performance in each fold
performances = zeros(10,1);

for i=1:10
    % choose training & testing
    tr = cv.training(i);
    te = cv.test(i);
     
    % train (5 / 10 / 10,5 )
    net = feedforwardnet([10 10]);
    net = train(net,X(:,tr),Y(:,tr));    
    % predict
    Y_pr = net(X(:,te));
    
    performances(i) = perform(net, Y_pr, Y(:,te));     
end

% average performance of network
mean(performances)

 