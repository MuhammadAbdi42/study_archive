% This is the exercise for '1. Lines'

% CONSTANTS
LINES = 50;
SQUARE_SIZE = 1;

% Plotting
figure(1), clf
hold on

y = linspace(0,SQUARE_SIZE,LINES);
x = linspace(0,SQUARE_SIZE,LINES);

for i=1:LINES
    plot([0 y(i)], [x(i) SQUARE_SIZE], 'g')
    plot([y(i) SQUARE_SIZE], [0 x(i)], 'w')
    plot([y(i) SQUARE_SIZE], [x(i) 0], 'm')
end

set(gca, 'Color', 'k', 'YTick', [], 'XTick', [], ...
    'YLim', [0 - .1*SQUARE_SIZE, SQUARE_SIZE + .1*SQUARE_SIZE], ...
    'XLim', [0 - .1*SQUARE_SIZE, SQUARE_SIZE + .1*SQUARE_SIZE])