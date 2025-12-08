% This is the exercise for '4. Identify Neurons in a Mouse Brain Slice'

%% CONSTANTS
Z_THRESH = -1;
PIXEL_THRESH = 8;

%% Loading image
original_image = imread("4. 100048576_197.jpg");

% Crop image
section = original_image(1073:2335, 2180:3803, :);

% Normalize image
normalized_image = squeeze(mean(section, 3));
normalized_image = (normalized_image - mean(normalized_image(:))) / std(normalized_image(:));

%% Process image
% Find clusters
binary_map = normalized_image <= Z_THRESH;

% Compute cluster sizes
islands = bwconncomp(binary_map);
cluster_size = cellfun(@length, islands.PixelIdxList);

% Remove too small clusters
% Grade neurons by size
threshold_filter = false(size(binary_map));
color_grade = nan(size(binary_map));
for iUnit = 1:islands.NumObjects
    if cluster_size(iUnit) <= PIXEL_THRESH
        continue;
    end
    threshold_filter(islands.PixelIdxList{iUnit}) = true;
    color_grade(islands.PixelIdxList{iUnit}) = log(cluster_size(iUnit));
end

% Buld alphamap
alphamap = ones(size(binary_map));
alphamap(~isfinite(color_grade)) = 0;

%% Plot
figure(1), clf
imagesc(normalized_image)
title('Normalized version of the original picture')
axis image; colormap gray

figure(2), clf

imagesc(section), hold on
contour(binary_map,1,'r')
contour(threshold_filter,1,'b')
title('Clusters graded by one threshold')
axis image

figure(3), clf

imagesc(color_grade,"AlphaData",alphamap)
title('Clusters graded by size')
set(gca, 'CLim', [0 7])
axis image; colormap jet