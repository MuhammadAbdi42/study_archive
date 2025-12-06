% This is the exercise for '7. Complex Sinc Surface'

%% CONSTANTS
RANGE = [-8 8];
RESOLUTION = 10;

%% Function
y_func = @(z) sin(z) ./ z;
surface_func = @(y) real(y) - abs(y);

%% Initialize numbers
z_range = linspace(RANGE(1), RANGE(2), (RANGE(2) - RANGE(1))*RESOLUTION);
[z_real, z_imag] = meshgrid(z_range, z_range*1i);
z = z_real + z_imag;

%% Compute surface
fz = surface_func(y_func(z));

%% Plot
figure(1), clf
surf(z_range, z_range, fz);
shading interp; rotate3d on
xlabel Imag; ylabel Real; zlabel f(z)
axis square