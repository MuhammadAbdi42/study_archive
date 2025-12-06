% This is the exercise for '6. Plane in R3 Spanned by Two Vectors'

%% CONSTANTS
v = [1 1 0];
w = [1 2 1];

% Linear Combination
u = randn*v + randn*w;

%% Plot
figure(1), clf

plot3([0 v(1)], [0 v(2)], [0 v(3)], "LineWidth", 4, "Color", 'g'), hold on
plot3([0 w(1)], [0 w(2)], [0 w(3)], "LineWidth", 4, "Color", 'g')
plot3([0 u(1)], [0 u(2)], [0 u(3)], "LineWidth", 4, "Color", 'r')

fmesh(@(s,t) v(1)*s + w(1)*t, @(s,t) v(2)*s + w(2)*t, @(s,t) v(3)*s + w(3)*t, [-1 1 -1 1])
set(gca, 'Colormap', ones(256, 3)*0.5)

axis square
grid on