% This is the exercise for '8. Blend Pictures Using Transparency'

%% Loading images
car_image = imread("n08_transparent_image/8. car1.jpg");
tape_image = imread("n08_transparent_image/8. tape.png");

%% Processing images
% Squeezing images into one channel (averaging over RGB channels)
car_image_2 = mean(car_image, 3);
tape_image_2 = mean(tape_image, 3);

% Resizing tape image to match car image
tape_image_2 = imresize(tape_image_2, size(car_image_2));

%% Plotting refrence and processed images
figure(1), clf
sgtitle('Refrence images and processed images')
colormap gray

subplot(221)
imagesc(car_image)
title 'Original car image'
axis image

subplot(222)
imagesc(tape_image)
title 'Original tape image'
axis image

subplot(223)
imagesc(car_image_2)
title 'Processed car image'
axis image

subplot(224)
imagesc(tape_image_2)
title 'Processed tape image'
axis image

%% Image blending
figure(2), clf
sgtitle('Image blending')
colormap gray

% Simple Averaging
subplot(121)
imagesc((car_image_2 + tape_image_2)/2)
title 'Simple averaging'
axis image

% Tranparency
subplot(122)
imagesc(car_image_2, "AlphaData", 0.5)
hold on
imagesc(tape_image_2, "AlphaData", 0.5)
title 'AlphaData'
colormap gray
axis image

%% Special patterns
% Right to left fading
rtl_fade = @(x) repmat(linspace(0,1, size(x, 2)), size(x, 1), 1);

% Right to left fading
ltr_fade = @(x) repmat(linspace(1,0, size(x, 2)), size(x, 1), 1);

% Top to bottom fading
ttb_fade = @(x) repmat(linspace(1,0, size(x, 1)), size(x, 2), 1)';

% Bottom to top fading
btt_fade = @(x) repmat(linspace(0,1, size(x, 1)), size(x, 2), 1)';

% Inverted quadradic fading
iq_fade = @(x) repmat(1 - linspace(-1,1, size(x,2)).^2, size(x,1), 1);

% Sine wave
sin_wave = @(x) repmat((sin(linspace(0,4*pi, size(x,2))) + 1)/2, size(x,1), 1);

%% Plotting special patterns
figure(3), clf
sgtitle('Special patterns')
colormap gray

subplot(231)
imagesc(car_image_2, "AlphaData", rtl_fade(car_image_2))
title 'Right to left fade'
axis image

subplot(232)
imagesc(car_image_2, "AlphaData", ltr_fade(car_image_2))
title 'Left to right fade'
axis image

subplot(233)
imagesc(car_image_2, "AlphaData", ttb_fade(car_image_2))
title 'Top to bottom fade'
axis image

subplot(234)
imagesc(car_image_2, "AlphaData", btt_fade(car_image_2))
title 'Bottom to top fade'
axis image

subplot(235)
imagesc(car_image_2, "AlphaData", iq_fade(car_image_2))
title 'Inverted quadradic fade'
axis image

subplot(236)
imagesc(car_image_2, "AlphaData", sin_wave(car_image_2))
title 'Sine wave'
axis image

%% Plotting both images with special patterns
figure(4), clf
sgtitle('Blending with special patterns')
colormap gray

subplot(221)
imagesc(car_image_2, "AlphaData", rtl_fade(car_image_2))
hold on
imagesc(tape_image_2, "AlphaData", ltr_fade(tape_image_2))
title 'Row fade'
axis image

subplot(222)
imagesc(car_image_2, "AlphaData", ttb_fade(car_image_2))
hold on
imagesc(tape_image_2, "AlphaData", btt_fade(tape_image_2))
title 'Column fade'
axis image

subplot(223)
imagesc(car_image_2, "AlphaData", iq_fade(car_image_2))
hold on
imagesc(tape_image_2, "AlphaData", 1 - iq_fade(tape_image_2))
title 'Quadradic fade'
axis image

subplot(224)
imagesc(car_image_2, "AlphaData", sin_wave(car_image_2))
hold on
imagesc(tape_image_2, "AlphaData", 1 - sin_wave(tape_image_2))
title 'Sine wave'
axis image

%% Animating using sigmoid
figure(5), clf
colormap gray
h1 = imagesc(car_image_2);
hold on
h2 = imagesc(tape_image_2, "AlphaData", 0);
title 'Animated fading'
axis image

x = linspace(-5,5, size(car_image_2, 2));

for ti = logspace(log10(.01), log10(100), 20)
    sigmoid = 1./(1+ti*exp(-x));
    set(h2, "AlphaData", repmat(sigmoid, size(car_image_2, 1), 1))
    pause(.0001)
end
