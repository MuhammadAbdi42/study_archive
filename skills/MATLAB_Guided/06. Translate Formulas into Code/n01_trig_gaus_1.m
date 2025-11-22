% This is the exercise for '1. Trig Functions and Gaussians'

%% Definig the range of functions
LOWER_BOUND_MULTIPLIER = 0; % Pi integer multiplier
HIGHER_BOUND_MULTIPLIER = 4; % Pi integer multiplier
TICKS = 1e4;

%% Initializing the data matrix (for sine, cosine and tangent)
lower_bound = LOWER_BOUND_MULTIPLIER * pi;
higher_bound = HIGHER_BOUND_MULTIPLIER * pi;

trig_funcs = zeros(3, TICKS);
ticks = linspace(lower_bound,higher_bound,TICKS);
for i=1:length(ticks)
    trig_funcs(1,i) = sin(ticks(i));
    trig_funcs(2,i) = cos(ticks(i));
    trig_funcs(3,i) = tan(ticks(i));
end

%% Plotting
figure, clf

% Labels and ticks
plot_x_ticks = linspace(lower_bound, higher_bound, (HIGHER_BOUND_MULTIPLIER - LOWER_BOUND_MULTIPLIER)/(0.25) + 1);
plot_x_labels = linspace(LOWER_BOUND_MULTIPLIER, HIGHER_BOUND_MULTIPLIER, (HIGHER_BOUND_MULTIPLIER - LOWER_BOUND_MULTIPLIER)/(0.25) + 1);
plot_x_labels = arrayfun(@(x) (num2str(x) + "pi"), plot_x_labels, 'UniformOutput', false);

% sin(x)
subplot(311)
plot(ticks, trig_funcs(1,:))
set(gca, "XTick", plot_x_ticks, 'XTickLabel', plot_x_labels)
title 'sin(x)'
axis tight

% cos(x)
subplot(312)
plot(ticks, trig_funcs(2,:))
set(gca, "XTick", plot_x_ticks, 'XTickLabel', plot_x_labels)
title 'cos(x)'
axis tight

% tan(x)
subplot(313)
plot(ticks, trig_funcs(3,:))
set(gca, "XTick", plot_x_ticks, 'XTickLabel', plot_x_labels)
title 'tan(x)'
axis tight
