% This is the exercise for '2. Derivative-based Time Series Segmentation'

%% CONSTANTS
POINTS = 1000;
ZSCORE_THRESH = 1.7;

%% Create random time series
time_vector = (1:POINTS) / 30;
signal = conv(cumsum(randn(1, POINTS)), exp(-zscore(time_vector).^2 / .0001), 'same') + linspace(-100, 100, POINTS);

%% Derivative
d_signal = diff(signal);
d_signal(POINTS) = d_signal(end);

%% Compute thresholds
high_thresh = find(zscore(d_signal) >= ZSCORE_THRESH);
low_thresh = find(zscore(d_signal) <= -ZSCORE_THRESH);

%% Compute jumps
jump_up = nan(1, POINTS);
jump_down = nan(1, POINTS);

jump_up(high_thresh) = signal(high_thresh);
jump_down(low_thresh) = signal(low_thresh);

%% Plot
figure(1), clf, hold on

plot(time_vector, signal)
plot(time_vector, jump_up, 'g', "LineWidth", 2)
plot(time_vector, jump_down, 'r', "LineWidth", 2)

axis square
title(['Stock market values with shifts of ' num2str(ZSCORE_THRESH) 'std indicated'])
legend("Random Signal", "Extreme Increases", "Extreme Decreases")
xlabel('Time (months)')
ylabel('Market Value')