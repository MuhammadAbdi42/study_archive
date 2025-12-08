% This is the exercise for '3. Intensity-based Image Segmentation'

%% CONSTANTS
IMAGE_SIZE = 400;
Z_THRESH = 2;

%% Generate random image
temp_vector = 1:round(IMAGE_SIZE/4);
temp_vector = zscore(temp_vector);
[X, Y] = meshgrid(temp_vector);

gaus2d = exp(-(X.^2 + Y.^2));

conv_img = conv2(randn(IMAGE_SIZE), gaus2d, "same");
z_img = (conv_img - mean(conv_img(:))) / std(conv_img(:));

%% Binarize the thresholded image (one-tailed)
[binary_map, num_cluster] = bwlabeln(z_img > Z_THRESH);

%% Plot
figure(1), clf

subplot(131)
imagesc(z_img)
title("Original image")
axis off; axis square

subplot(132)
imagesc(binary_map)
title("Binarized image")
axis off; axis square

subplot(133)
imagesc(z_img), hold on
contour(binary_map > 0, 'k', "LineWidth", 2)
title("Original image with contours")
axis off; axis square