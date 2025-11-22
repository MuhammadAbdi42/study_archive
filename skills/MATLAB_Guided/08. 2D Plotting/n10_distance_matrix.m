% This is the exercise for '10. Distance Matrix from Generated Points'

%% Input dots via GUI
figure(1), clf
% Giving a handle to plot
h = plot(nan,nan, 's', 'MarkerFaceColor', 'r');

% Setting variable for the title
dots_count = 0;
title(['Enter SPACE when finished. (Current count: ' num2str(dots_count) ')'])

% Setting axis
axis ([-1, 1, -1, 1])
axis square

% Input
[x, y] = deal([]);
while true
    % Saving x,y and the button pressed
    [xt, yt, button] = ginput(1);

    % Breaking the loop if SPACE is pressed
    if strcmp(char(button), ' ')
        break
    end

    % Updating the dataset
    x = [x xt];
    y = [y yt];
    dots_count = dots_count + 1;

    % Updating the plot
    set(h, 'XData', x, 'YData', y);
    title(['Enter SPACE when finished. (Current count: ' num2str(dots_count) ')'])
end

%% Compute euclidean distance
% Using nested loops
distmat = zeros(dots_count);
for i=1:dots_count
    for j=1:dots_count
        distmat(i,j) = sqrt( (x(i) - x(j))^2 + (y(i) - y(j))^2 );
    end
end

% Using bsxfun
distmat = sqrt( bsxfun(@minus,x,x').^2 + bsxfun(@minus,y,y').^2 );

%% Plotting
figure(2), clf
colormap jet

subplot(221)
plot(x,y, 'rs', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
axis square
title 'All points'

subplot(222)
imagesc(distmat)
axis square
title 'Distance matrix'

subplot(212)
histogram(nonzeros(triu(distmat)), 200);
title 'Histogram'
