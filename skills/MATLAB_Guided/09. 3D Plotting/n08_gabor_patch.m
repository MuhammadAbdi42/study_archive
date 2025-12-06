% This is the exercise for '8. The Prickly Gabor Patch'

%% CONSTANTS
RANGE_X = [-20 20];
RANGE_Y = [-20 20];
RESOLUTION = 1;

PHASE = pi/4;
FREQ = 0.05;

MX = 0;
MY = 0;
S = 10;

%% Range
X_range = linspace(RANGE_X(1), RANGE_X(2), (RANGE_X(2) - RANGE_X(1))*RESOLUTION);
Y_range = linspace(RANGE_Y(1), RANGE_Y(2), (RANGE_Y(2) - RANGE_Y(1))*RESOLUTION);
[X, Y] = meshgrid(X_range, Y_range);

%% Functions
xp_func = @(X, Y, phase)               X.*cos(phase) + Y.*sin(phase);
S_func  = @(X, Y, phase, f)            sin(2*pi*f*xp_func(X, Y, phase));

G_func  = @(X, Y, mx, my, s)           exp(-((X-mx).^2+(Y-my).^2)/(2*s^2));

%% Compute
S_data = S_func(X, Y, PHASE, FREQ);
G_data = G_func(X, Y, MX, MY, S);
P_data = S_data.*G_data;

%% Plot 2D
figure(1), clf

subplot(221)
imagesc(X_range, Y_range, S_data);
axis square; axis xy; axis off
title 'Sine Grating'

subplot(222)
imagesc(X_range, Y_range, G_data);
axis square; axis xy; axis off
title '2D Gaussian'

subplot(212)
imagesc(X_range, Y_range, P_data);
axis square; axis xy; axis off
title(['Gabor Patch at f=' num2str(FREQ) ', \theta=' num2str(PHASE)])

%% Plot 3D
figure(2), clf

subplot(121)
surfnorm(X, Y, P_data)
axis square; axis xy; axis off
rotate3d on

subplot(122)
mesh(X,Y, P_data, S_data)
axis square; axis xy; axis off
rotate3d on
