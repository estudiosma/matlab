close all;
clear;
clc;
%%
% Create a sample sine wave
fs = 1000;                 % Sampling frequency (Hz)
t = 0:1/fs:1-1/fs;         % Time vector
signal = sin(2*pi*50*t);   % 50 Hz sine wave

% Compute and plot FFT
ma_fft_plot(signal, fs);

% Or compute FFT without plotting
[f, mag] = ma_fft(signal, fs);