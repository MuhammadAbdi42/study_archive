% This is the exercise for '2. Bars and errorbars'

%% CONSTANTS
FEATURES = 6;
OBSERVATIONS = 30;

%% Creating random data
data = randn(OBSERVATIONS, FEATURES); % Creating random data
data = bsxfun(@times, data, linspace(-1,1,FEATURES).^2); % Setting variance to increase quadraticaly
data = bsxfun(@plus, data, (1:FEATURES)); % Setting maen to increase linearly

%% PLotting
figure(1), clf

subplot(131)
bar(1:FEATURES, mean(data,1))
axis square, set(gca, 'XLim', [0 FEATURES + 1], 'XTick', 1:FEATURES)
title 'Bar Plot'

subplot(132)
errorbar(1:FEATURES, mean(data), std(data), 's')
axis square, set(gca, 'XLim', [0 FEATURES + 1], 'XTick', 1:FEATURES)
title 'Error Bar Plot'

subplot(133)
hold on
bar(1:FEATURES, mean(data,1))
errorbar(1:FEATURES, mean(data), std(data), '.')
axis square, set(gca, 'XLim', [0 FEATURES + 1], 'XTick', 1:FEATURES)
title 'Combined'