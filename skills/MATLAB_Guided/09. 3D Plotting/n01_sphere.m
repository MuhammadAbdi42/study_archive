% This is the exercise for '1. Sphere in a Cube'

%% CONSTANTS
CENTER = [0 0 0];
CUBE_LEN = 10;
SPHERE_RADIUS = 5;

%% Drawing the cube
% Corners
corners = zeros(8, 3);
index = 1;
for ix = 0:1
    for iy = 0:1
        for iz = 0:1
            corners(index, 1) = 1/2 * CUBE_LEN * (-1) ^ ix + CENTER(1);
            corners(index, 2) = 1/2 * CUBE_LEN * (-1) ^ iy + CENTER(2);
            corners(index, 3) = 1/2 * CUBE_LEN * (-1) ^ iz + CENTER(3);
            index = index + 1;
        end
    end
end

% Vertices
figure(1), clf
for i=1:size(corners,1)-1
    for j=i+1:size(corners,1)
        point_1 = corners(i, :);
        point_2 = corners(j, :);
        if (abs(point_1(1) - point_2(1)) + abs(point_1(2) - point_2(2)) + abs(point_1(3) - point_2(3))) == CUBE_LEN
            plot3([point_1(1) point_2(1)], [point_1(2) point_2(2)], [point_1(3) point_2(3)], "Color", 'w'), hold on
        end
    end
end

%% Drawing the sphere
[sx, sy, sz] = sphere;
sx = sx.*SPHERE_RADIUS + CENTER(1);
sy = sy.*SPHERE_RADIUS + CENTER(2);
sz = sz.*SPHERE_RADIUS + CENTER(3);

plot3(sx, sy, sz);

%% Drwaing the colorful sphere
[sx, sy, sz] = sphere;
sx = sx.*SPHERE_RADIUS/2 + CENTER(1);
sy = sy.*SPHERE_RADIUS/2 + CENTER(2);
sz = sz.*SPHERE_RADIUS/2 + CENTER(3);

scatter3(sx(:), sy(:), sz(:), 100, linspace(0,255,size(sx(:),1)), 'filled')

%% Plot configuration
axis padded
axis square
axis off