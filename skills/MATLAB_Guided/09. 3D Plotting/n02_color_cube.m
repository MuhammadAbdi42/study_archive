% This is the exercise for '2. Colorful Cube (a.k.a. the happy Borg ship)'

%% CONSTANTS
BIG_CUBE_SIZE = 10;
NODE_CUBE_SIZE = 400;
DENSITY = 10;

%% Drawing the big cube
figure(1), clf
[x, y] = meshgrid(linspace(-BIG_CUBE_SIZE/2,BIG_CUBE_SIZE/2,DENSITY));
x = [x(:) x(:)]';
y = [y(:) y(:)]';
z = [zeros(1, DENSITY*DENSITY)-BIG_CUBE_SIZE/2; zeros(1, DENSITY*DENSITY)+BIG_CUBE_SIZE/2];
plot3(x,y,z, 'w', y,z,x, 'w', z,x,y, 'w')

axis square; axis off; hold on

%% Drwaing node cubes
[x, y, z] = meshgrid(linspace(-BIG_CUBE_SIZE/2,BIG_CUBE_SIZE/2,DENSITY));
colors = logspace(log10(1), log10(1000),DENSITY^3);
scatter3(x(:),y(:),z(:), 200,colors, "filled", 's', 'SizeData', NODE_CUBE_SIZE)