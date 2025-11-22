% This is the exercise for '6. Histograms'

%% CONSTANTS
DATA_COUNT = 1000;
% For subplot 1
BIN_COUNT = 40;
% For animation
BIN_LOWER = 5;
BIN_HIGHER = DATA_COUNT/2;
FRAMES = 30;

%% Generating random data
distribution_func = @(x) exp(x/2);
x_array = randn(1, 1000);

random_data = distribution_func(x_array);

%% Freedman-Diaconis Rule
bin_size = 2 * (iqr(random_data) / DATA_COUNT^(1/3));
bin_count = ceil((max(random_data) - min(random_data)) / bin_size);

%% Plotting
figure(1), clf

% BIN_SIZE
subplot(121)
histogram(random_data,BIN_COUNT);
title([num2str(BIN_COUNT) ' bins'])
ylabel 'Count'
xlabel 'Value'
axis square

% Freedman-Diaconis
subplot(122)
histogram(random_data,bin_count);
title(['Optimal (' num2str(bin_count) ') bins'])
ylabel 'Count'
xlabel 'Value'
axis square

% Animation
figure(2), clf, subplot(111)
bin2try = round(linspace(BIN_LOWER,BIN_HIGHER,FRAMES));

h = plot([1 0], [0 1], 's-', 'LineWidth', 2, 'MarkerSize', 8);
ylabel 'Count'
xlabel 'Value'
axis square

for framei=1:FRAMES
    [y, x] = hist(random_data, bin2try(framei));

    set(h, 'XData', x, 'YData', y)
    title([num2str(bin2try(framei)) ' bins'])

    pause(0.5)
end