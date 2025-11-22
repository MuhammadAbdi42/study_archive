% This is the exercise for '4. Piecewise Functions' and
% '5. Piecewise Function in one line of Code'

%% Functions and their ranges
funcs = {}; ranges = {};

funcs{1} = @(x) sin(2*pi*4*x);
funcs{2} = @(x) 0;
funcs{3} = @(x) x;
funcs{4} = @(x) exp(x/10);
funcs{5} = @(x) 1 - x/10;

cuts = [-10 -1 0 3 10 20];
ranges{1} = [-10 -1];
ranges{2} = [-1 0];
ranges{3} = [0 3];
ranges{4} = [3 10];
ranges{5} = [10 20];

%% Intializing x-values and y-values using dsearchn
x1 = linspace(-10, 20, 1000);
y1 = zeros(size(x1));

for i=1:length(funcs)
    if i == 1
        start_index = 1;
    else
        start_index = dsearchn(x1', ranges{i}(1)) + 1;
    end

    if i == length(funcs)
        end_index = length(x1);
    else
        end_index = dsearchn(x1', ranges{i}(2));
    end

    y1(start_index:end_index) = funcs{i}(x1(start_index:end_index));
end

%% Intializing x-values and y-values using one-liner method
x2 = linspace(-10, 20, 1000);
y2 = (cuts(1)<=x2 & x2<=cuts(2)).*funcs{1}(x2) + ...
     (cuts(2)< x2 & x2<=cuts(3)).*funcs{2}(x2) + ...
     (cuts(3)< x2 & x2<=cuts(4)).*funcs{3}(x2) + ...
     (cuts(4)< x2 & x2<=cuts(5)).*funcs{4}(x2) + ...
     (cuts(5)< x2 & x2<=cuts(6)).*funcs{5}(x2);
 

%% Plotting
figure(1), clf
plot(x1,y1)
axis tight

figure(2), clf
plot(x2,y2)
axis tight