%
% Version:  1.0
% Date:     06-jun-2025
% Author:   Molina Vidal D.A. by Estudios MA
% Contact:  estudiosma01@gmail.com
% Download more functions on our Github:
% https://github.com/estudiosma/matlab
%
% [f, magnitude] = ma_fft_plot(data, fs, showPlot, newFigure)
% ma_fft_plot Plots the magnitude of the discrete Fourier transform (DFT)
% of 'data'.
%
% Syntax:
%   [f, magnitude] = ma_fft_plot(data)
%   [f, magnitude] = ma_fft_plot(data, fs)
%   [f, magnitude] = ma_fft_plot(data, fs, showPlot)
%   [f, magnitude] = ma_fft_plot(data, fs, showPlot, newFigure)
%
% Inputs:
%   - data:      Nx1 vector or NxM matrix with the signals to transform.
%   - fs:        (optional) Sampling frequency in Hz. Default is 1 Hz.
%   - showPlot:  (optional) true to plot the result, false to only return outputs. Default is true.
%   - newFigure: (optional) true to open a new figure window, false to plot on the current figure. Default is true.
%
% Outputs:
%   - f:         Frequency vector (Hz).
%   - magnitude: Magnitude spectrum (amplitude).
%
% Example:
%   data = randn(1024,1);    % Example signal
%   fs = 1000;               % Sampling frequency (Hz)
%   [f, mag] = ma_fft_plot(data, fs, true, true);  % Plot in new figure
%

function [f, magnitude] = ma_psd_plot(data, fs, varargin)

if nargin < 2
    fs = 1; % default fs
end

p = inputParser;
addParameter(p, 'showPlot', true);     % Default: plot
addParameter(p, 'newFigure', true);    % Default: new figure
parse(p, varargin{:});

showPlot = p.Results.showPlot;
newFigure = p.Results.newFigure;

% Ensure column vector
[row, col] = size(data);
if col > row
    data = data';
end

% Compute FFT
NNFT = length(data);
Y = fft(data, NNFT);
f = fs/2 * linspace(0, 1, floor(NNFT/2));
magnitude = (abs(Y(1:floor(NNFT/2), :)).^2) / (fs*NNFT);
magnitude = sqrt(magnitude);

% Plot if requested
if showPlot
    if newFigure
        figure;
    end
    plot(f, (magnitude));
    xlabel('Frequency (Hz)');
    ylabel('PSD (V^2/Hz)');
    grid on;
    title('Power Spectral Density');
end
