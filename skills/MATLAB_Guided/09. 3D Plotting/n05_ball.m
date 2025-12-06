% This is the exercise for '5. A Ball in 3D Color Space'

function ball_creator(CENTER, RADIUS, RESOLUTION)
%% Initializng data
plot_axis = linspace(0,255, 256*RESOLUTION);

%% Compute sphere dots
[R, G, B] = meshgrid(plot_axis-CENTER(2), plot_axis-CENTER(1), plot_axis-CENTER(3));

distance_sphere = sqrt(R.^2 + G.^2 + B.^2);
distance_sphere = distance_sphere<=RADIUS;

[i, j, k] = ind2sub(size(distance_sphere), find(distance_sphere(:)));
i = i/(RESOLUTION*256);
j = j/(RESOLUTION*256);
k = k/(RESOLUTION*256);

%% Plot
scatter3(i, j, k, 100, [i j k], 'filled');
set(gca, "XLim", [0 1], "YLim", [0 1], "ZLim", [0 1])
xlabel("Red"), ylabel("Green"), zlabel("Blue")
axis square
end

%% Plot
figure(1), clf

ball_creator([110, 60 , 28 ], 88 , 0.25); hold on
ball_creator([44 , 220, 67 ], 25 , 0.25); hold on
ball_creator([67 , 180, 160], 40 , 0.25); hold on
ball_creator([230, 40 , 80 ], 30 , 0.25); hold on
