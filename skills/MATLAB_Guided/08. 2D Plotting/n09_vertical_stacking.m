% This is the exercise for '9. Vertically Stacking Data Series'

%% Constants
CHANNELS = 50;
TIME_POINTS = 1000;
OFFSET = 10;

%% Create time series
cormat = rand(CHANNELS);
[evecs, evals] = eig(cormat * cormat');
data = evecs*sqrt(evals)*randn(CHANNELS, TIME_POINTS);

%% Detrend time series
data = detrend(cumsum(data, 2)')';

%% Vertically stack the data (for loop)
figure(1), clf, hold on
for i = 1:CHANNELS
    plot(1:TIME_POINTS, data(i,:) + i*OFFSET)
end
set(gca, 'ytick', [])

%% Vertically stack the data (bsxfun)
figure(2), clf
plot(1:TIME_POINTS, bsxfun(@plus, data, (1:CHANNELS)'*OFFSET))
set(gca, 'ytick', [])

