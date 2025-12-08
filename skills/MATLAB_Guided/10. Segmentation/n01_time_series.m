% This is the exercise for '1. Threshold-based Time Series Segmentation'

%% CONSTANTS
POINTS = 5000;
RANGE = [0 10];
ISLAND_SIZE = 5;

%% Time Series
time_vector = linspace(RANGE(1), RANGE(2) - (RANGE(2) - RANGE(1))/POINTS, POINTS);
time_series = detrend(cumsum(randn(POINTS, 1)));

%% Plot
figure(1), clf, hold on

plot(time_vector, time_series, "LineWidth", 1);
plot(get(gca, "XLim"), [0 0]);

%% Thresholds
tmp_sort = sort(time_series);
thresh = [tmp_sort(round(POINTS * 0.1)), tmp_sort(round(POINTS * 0.9))];

%% Patches
whichcolor = 'rg';
whichsign = '<>';

for iThresh = 1:2
    % targets = time_series </> thresh(1/2);
    eval(['targets = time_series' whichsign(iThresh) 'thresh(' num2str(iThresh) ');'])

    islands = bwconncomp(targets);
    valid_islands = cellfun(@length, islands.PixelIdxList);
    valid_islands = valid_islands >= ISLAND_SIZE;
    islands.PixelIdxList = islands.PixelIdxList(valid_islands);

    for iIsland = 1:length(islands.PixelIdxList)
        x_points = time_vector(islands.PixelIdxList{iIsland});
        y_points = time_series(islands.PixelIdxList{iIsland})';

        patch([x_points x_points(end:-1:1)], [zeros(1,length(y_points)) y_points(end:-1:1)], whichcolor(iThresh), "linestyle", 'none', "facealpha", 0.5);
    end
end