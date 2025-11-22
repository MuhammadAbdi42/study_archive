% This is the exercise for '3. Dots'

%% CONSTANTS
LOWERBOUND = -1;
HIGHERBOUND = 3;
DOTS = 1000;

%% Initializing data
data = zeros(2,DOTS);
data(1,:) = exp( linspace(LOWERBOUND, HIGHERBOUND, DOTS) );
data(2,:) = randn(1,DOTS);

%% Plotting
figure(1), clf

h = plot(data(1,:), data(2,:));
set(h, 'Marker', 'pentagram', ...
    'LineStyle','none', ...
    'MarkerFaceColor','r', ...
    'MarkerEdgeColor', 'b')

figure(2), clf

scatter(data(1,:), data(2,:),60,1:DOTS,'filled');
