% This is the exercise for '5. Unsolved imagesc vs. pcolor'

%% Assignment
ri = randn(10);
subplot(122), pcolor(ri)
subplot(121), imagesc(ri), axis xy
colormap jet