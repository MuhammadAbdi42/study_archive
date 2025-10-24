% The anonymous function
func1 = @(x, y) 2 .* x - sqrt(x) .* (y.^2);

% Initializin X and Y
x = linspace(0, 10, 100);
y = linspace(-5, 5, 100);

% Evaluate the function over X and Y
[X,Y] = meshgrid(x, y);
result = func1(X, Y);

% Graph
figure(), clf
contourf(X, Y, result, 40, 'linecolor', 'none')
xlabel('X'), ylabel('Y'), colorbar, axis square
