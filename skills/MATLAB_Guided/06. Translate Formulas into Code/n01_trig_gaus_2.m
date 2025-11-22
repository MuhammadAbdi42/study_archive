% This is the exercise for '1. Trig Functions and Gaussians'

%% Functions
sin_wave = @(amp,freq,x,shift) amp*sin(2*pi*freq*x + shift);
cos_wave = @(amp,freq,x,shift) amp*cos(2*pi*freq*x + shift);
tan_wave = @(amp,freq,x,shift) amp*tan(2*pi*freq*x + shift);
gaus_func = @(amp,x,center,width) amp*exp((-(x-center).^2)/(2*width^2));

%% CONSTANTS
% Trig functions
TRIG_LOWER_BOUND = 0;
TRIG_HIGHER_BOUND = 4;
TRIG_INTERVAL = 0.001;

TRIG_AMPLITUDE = 3;
TRIG_PHASE_SHIFT = pi/3;
TRIG_FREQUENCY = 1;

% Gaussian function
GAUS_LOWER_BOUND = 0;
GAUS_HIGHER_BOUND = 10;
GAUS_INTERVAL = 0.1;

GAUS_AMPLITUDE = 3;
GAUS_CENTER = 7;
GAUS_WIDTH = 0.8;

% Gaussian-Tapered Tangent
TAP_LOWER_BOUND = 1;
TAP_HIGHER_BOUND = 3;
TAP_CENTER = 1.5;
TAP_WIDTH = 0.3;
TAP_AMPLITUDE = 3;
TAP_FREQUENCY = 8000;

%% Making ticks array for trig functions
trig_ticks = TRIG_LOWER_BOUND:TRIG_INTERVAL:TRIG_HIGHER_BOUND;

%% Computing trig functions over ticks array
waves = zeros(3, length(trig_ticks));
waves(1,:) = sin_wave(TRIG_AMPLITUDE,TRIG_FREQUENCY,trig_ticks,TRIG_PHASE_SHIFT);
waves(2,:) = cos_wave(TRIG_AMPLITUDE,TRIG_FREQUENCY,trig_ticks,TRIG_PHASE_SHIFT);
waves(3,:) = tan_wave(TRIG_AMPLITUDE,TRIG_FREQUENCY,trig_ticks,TRIG_PHASE_SHIFT);

%% Plotting trig functions
figure, clf

% sine wave
subplot(311)
plot(trig_ticks, waves(1,:))
title(['a.' 'sin(' '2.pi.f.t + c)'])
ylabel 'Amplitude'
xlabel 'Time (rad)'
axis tight

% cos wave
subplot(312)
plot(trig_ticks, waves(2,:))
title(['a.' 'cos(' '2.pi.f.t + c)'])
ylabel 'Amplitude'
xlabel 'Time (rad)'
axis tight

% tan wave
subplot(313)
plot(trig_ticks, waves(3,:))
title(['a.' 'tan(' '2.pi.f.t + c)'])
ylabel 'Amplitude'
xlabel 'Time (rad)'
axis tight

%% Making ticks array for gaussian function
gaus_ticks = GAUS_LOWER_BOUND:GAUS_INTERVAL:GAUS_HIGHER_BOUND;

%% Computing gaussian function over ticks array
gaus = gaus_func(GAUS_AMPLITUDE,gaus_ticks, GAUS_CENTER, GAUS_WIDTH);

%% Plotting gaussian function
figure, clf
plot(gaus_ticks, gaus)
title('Gaussian Function')
ylabel 'Amplitude'
xlabel 'Time (rad)'
axis tight

%% Computing Gaussian-Tapered Tangent
gaus_tan_ticks = TAP_LOWER_BOUND:1/TAP_FREQUENCY:TAP_HIGHER_BOUND-1/TAP_FREQUENCY;
gaus_tang = gaus_func(TAP_AMPLITUDE, gaus_tan_ticks, TAP_CENTER, TAP_WIDTH) .* ...
            tan_wave(1,8000,gaus_tan_ticks,0);

%% Plotting Gaussian-Tapered Tangent function
figure, clf
plot(gaus_tan_ticks, gaus_tang)
title('Gaussian-Tapered Tangent')
ylabel 'Amplitude'
xlabel 'Time (rad)'
axis tight
