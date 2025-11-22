% This is the exercise for '3. Create an Upper-Triangular Matrix'

%% Fill function
func1 = @(i, j) 1.03^(sqrt(i*j)); 

%% Constants
N = 70;

%% Upper Triangle and Lower Triangle
upper_triangle = zeros(N);
lower_triangle = zeros(N);
for i=1:N
    for j=1:N
        if i<j
            upper_triangle(i,j) = func1(i,j);
        else
            lower_triangle(i,j) = func1(N,N) - func1(i, j);
        end
    end
end
%% Full Matrix
full_matrix = upper_triangle + lower_triangle;

%% Plotting
figure, clf

subplot(131)
imagesc(upper_triangle)
title 'Upper-Triangle Matrix'
set(gca, "YTick", [], "XTick", [])
axis square;

subplot(132)
imagesc(lower_triangle)
title 'Lower-Triangle Matrix'
set(gca, "YTick", [], "XTick", [])
axis square;

subplot(133)
imagesc(full_matrix)
title 'Full Matrix'
set(gca, "YTick", [], "XTick", [])
axis square;
