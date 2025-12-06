% This is the exercise for '4. Textured Gaussian Surfaces'

%% CONSTANTS
LOW_BOUND = -5;
HIGH_BOUND = 5;
RESOLUTION = 300;

ISO_WIDTH = 2;
ANISO_X_WIDTH = 1;
ANISO_Y_WIDTH = 3;

%% Functions
iso_gaussian = @(x, y, s) exp(-(x.^2 + y.^2)/(2*s^2));
aniso_gaussian = @(x, y, sx, sy) exp(-(x.^2)./(2*sx^2) - (y.^2)./(2*sy^2));

%% Initializing data
plot_axis = linspace(LOW_BOUND, HIGH_BOUND, RESOLUTION);
[X, Y] = meshgrid(linspace(LOW_BOUND, HIGH_BOUND, RESOLUTION));
iso_surf = iso_gaussian(X, Y, ISO_WIDTH);
aniso_surf = aniso_gaussian(X, Y, ANISO_X_WIDTH, ANISO_Y_WIDTH);

%% Color map
rand_colormap = rand(RESOLUTION);

hand_image = imread('hands1.jpg');
hand_image = mean(hand_image, 3);
hand_colormap = imresize(hand_image, [RESOLUTION, RESOLUTION]);

%% Plot
figure(2), clf

subplot(121)
surf(plot_axis, plot_axis, iso_surf, rand_colormap)
title('Isometric Gaussian (random colormap)')
shading interp
axis square

subplot(122)
surf(plot_axis, plot_axis, aniso_surf,hand_colormap)
title('Anisometric Gaussian (custon colormap)')
shading interp
colormap gray
axis square