% This is the exercise for '4. Multidimensional Data with Colored Scatter'

%% CONSTANTS
X_RANGE = [-1 1];
DOTS = 100;
MARKER_SIZE = 20;

%% Functions
func_1 = @(x) x.^2;
func_2 = @(x) sin(3*x);
func_3 = @(x) exp(-10 * x.^2);

%% Creating array
x = linspace(X_RANGE(1), X_RANGE(2), DOTS);
thearray = [func_1(x);func_2(x);func_3(x)];

%% Plot
figure(1), clf
scatter(thearray(1,:), thearray(2,:), MARKER_SIZE, thearray(3,:), 'filled');

% Plot configs
axis padded square
colormap jet
title 'The Original Scatterplot'
ylabel 'y_2'
xlabel 'y_1'

%% Adding noise
NOISE_ARRAY = randn(1,DOTS)/10;

%% Plotting noise
% All combinations
comb = {[0 0 0], [0 0 1], [0 1 0], [1 0 0], [0 1 1], [1 0 1], [1 1 0], [1 1 1]};
figure(2), clf
% sgtitle('Plot with noise')
for ploti=1:8
    subplot(2,4,ploti)
    scatter(thearray(1,:) + NOISE_ARRAY*comb{ploti}(1), ...
        thearray(2,:) + NOISE_ARRAY*comb{ploti}(2), ...
        MARKER_SIZE, ...
        thearray(3,:) + NOISE_ARRAY*comb{ploti}(3), 'filled');
    % Plot configs
    colormap jet
    axis padded square
    title([num2str(comb{ploti}(1)) num2str(comb{ploti}(2)) num2str(comb{ploti}(3))])
    ylabel 'y_2'
    xlabel 'y_1'
end