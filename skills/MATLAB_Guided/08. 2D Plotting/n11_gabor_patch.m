% This is the exercise for '11. Gabor Patch Marginal Histograms'

%% Constants
SINE_FREQ = 0.005;
SINE_PHASE = -pi/4;
RES = 200;
WIDTH = 50;
SHIFT = 0.7;

%% Grid
[X, Y] = ndgrid(-RES:RES);

%% Sine wave
Xp = X*cos(SINE_PHASE) + Y*sin(SINE_PHASE);
sine2d = sin(2*pi * SINE_FREQ * Xp);

%% Gausian
gaus2d = exp( -((X+SHIFT*RES).^2 + Y.^2) ./ (2*WIDTH^2) );

%% First image
img1 = abs(sine2d .* gaus2d);
figure(1), clf
imagesc(img1)
axis square
axis xy

%% Image with histogram
figure(2), clf

% Main axis
main_axis = axes;
set(main_axis,'clim', [-clim clim] * WIDTH, "Position", [.1 .1 .7 .7])

imagesc(-RES:RES, -RES:RES, img1)
axis xy

clim = max(abs(img1(:)));
set(main_axis, 'XTick', [], 'YTick', [])

% Histogram axes
right_ax = axes;
top_ax = axes;

plot(top_ax, -RES:RES, sum(img1,1), 'k', 'linew', 3)
plot(right_ax, sum(img1,2), -RES:RES, 'k', 'linew', 3)

set(right_ax, "Position", [.8 .1 .2 .7])
set(top_ax, "Position", [.1 .8 .7 .2])
axis(right_ax, 'off')
axis(top_ax, 'off')

% Figure configuration
set(gcf, "Color", 'w')
