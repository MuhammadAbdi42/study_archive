% This is the exercise for '3. Expanding Wavelets with Surfaces'

%% CONSTANTS
START_FREQ = 1;
END_FREQ = 8;
FREQ_COUNT = 50;

START_TIME = -2;
END_TIME = 2;
SAMPLE_FREQ = 1000;

%% Data initialize
time_stamps = START_TIME:1/SAMPLE_FREQ:END_TIME;
freqs = linspace(START_FREQ, END_FREQ, FREQ_COUNT);
wave = zeros(FREQ_COUNT, length(time_stamps));

%% Computing wavelets
for iFreq=1:FREQ_COUNT
    f = freqs(iFreq);
    s = 5/(2*pi*f);
    wave(iFreq, :) = cos(2*pi*f*time_stamps).*exp((-time_stamps.^2)/(2*s^2));
end

%% Surface plot
figure(3), clf

surf(time_stamps, freqs, wave, repmat(freqs',1, size(wave, 2)))
shading interp
axis square
xlabel('Time (s)'), ylabel('Frequency (Hz)'), zlabel('Amplitude')