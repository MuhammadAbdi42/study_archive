![[Pasted image 20251201112708.png]]
- **Fourier Transform:** Any signal can be expressed as a combination of different sine waves, each with its own frequency, amplitude, and phase.
		- By using `fft` (or similar functions) the signal is converted to the **frequency domain** (how much of each frequency it contains).
		- The amplitude and the phase of the signal can be calculated from the transformation.
		- **Note:** in brain signal processing negative frequencies are not needed, so we use one sided power spectrum. 
```matlab
signal = ...;       % your signal
N = length(signal); % number of samples
fs = ...;           % sampling rate

% FFT
FourierTransform = fft(signal);
% Frequency vector (centered at 0)
fshift = (-N/2 : N/2-1) * (fs/N);
% Shift FFT for plotting centered at 0 Hz
FourierTransformShift = fftshift(FourierTransform);

% Amplitude (power spectrum)
power = abs(FourierTransformShift) / N;
% Phase spectrum
phase = angle(FourierTransformShift);

% Plot amplitude
figure;
subplot(2,1,1);
% One-Sided Spectrum (Half to End)
plot(fshift(floor(length(fshift)/2):end), power(floor(length(power)/2):end));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Shifted Fourier Transform (Amplitude)');

% Plot phase
subplot(2,1,2);
% One-Sided Spectrum (Half to End)
plot(fshift(floor(length(fshift)/2):end), phase(floor(length(phase)/2):end));
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
title('Phase Spectrum');
```
![[Pasted image 20251201135139.png]]

---

![[Pasted image 20251201135020.png]]
- **Welch's Method:** It is used to reduce noise and variance in power spectrum, we can use Welch's method:
	- 1. Subtract the mean from the signal.
	- 2. Split the signal into N overlapping segments of equal length.
	- 3. Apply windowing to every segment in order to avoid leakage.
	- 4. Calculate DFT of every windowed segment.
	- 5. Calculate the one-sided spectral density.
```matlab
% Overlap size
ov        = 0.5;
% Window length
winlen    = 1000;
% Frequencies to calculate
freq_Bins = linspace(1, 500, 500);

[pd, freqs] = pwelch(signal, window_length, floor(overlap*winlen), freq_Bins, fs)
```
![[Pasted image 20251201135802.png]]

---

- **Sampling Frequency:** Sampling is the process of observing and recording the value of a complex signal during uniform intervals of time.
	- The frequency must be high enough to be able to reconstruct the original signal, otherwise **aliasing** will happen; when the input frequency is greater than half the sample frequency.
	- ![[Pasted image 20251201140237.png]]
	- **Nyquist Theorem:** 
		- 1. it specifies that a sinusoidal function in time or distance can be regenerated with no loss of information as long as it is sampled at a frequency greater that or equal to *twice per cycle*.
		- 2. It states that the highest frequency which can be represented accurately is *one half of the sampling rate*.
---
![[Pasted image 20251201141508.png]]
- **Spectral leakage** occurs when analyzing a signal using FFT, If the signal doesn’t exactly fit an integer number of periods in the window, the discontinuity at the edges introduces energy spread across multiple frequencies in the spectrum.
	- **Example 1: Effects of FFT length and frequency resolution**
	- ![[Pasted image 20251201142022.png]]
	- **Example 2: Effects of time-limited observation**
	- ![[Pasted image 20251201142032.png]]
	- **Note:** when recording LFP along with spikes, spikes would effect the signal and leak into other frequencies.
---
![[Pasted image 20251201142622.png]]
- **Window Functions:** Various window functions are used to reduce leakage.
- ![[Pasted image 20251201142701.png]]
---
- **Note:** Signal bands (delta, theta, alpha, etc.) are arbitrary.