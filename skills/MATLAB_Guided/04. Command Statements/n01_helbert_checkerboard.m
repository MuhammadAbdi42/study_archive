% This is the exercise for '1. Create a Hilbert Matrix Using for-loops'

% Initializing matirices
N = 5;
hilbert_mat = zeros(N);
checkerboard_mat = zeros(N);

% Computing
for i=1:N
    for j=1:N
        hilbert_mat(i,j) = 1 / (i + j - 1);
        checkerboard_mat(i,j) = (-1) ^ (i + j - 1);
    end
end

% Plotting
figure, clf

subplot(121)
imagesc(hilbert_mat)
title 'Hilbert'
set(gca, "YTick", [], "XTick", [])
axis square;

subplot(122)
imagesc(checkerboard_mat)
title 'Checkerboard'
set(gca, "YTick", [], "XTick", [])
axis square;