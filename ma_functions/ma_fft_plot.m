% 
% Version 1.0
% Date: 27-abr-2023
% Autor: Molina Vidal D.A. by Estudios MA
% Contact: estudiosma01@gmail.com
% Download more functions on our Github:
% https://github.com/estudiosma/matlab
%
% ma_fft_plot(data, fs, new_figure)
% Plot fft Discrete Fourier transform.
%
% Example:
% data = ;  % 'data' is a vector Nx1
% fs = ;    % sampling frequency
% new_figure = 1;   % 1 to plot on a new figure Any other value to plot 
% on an open figure.
% ma_fft_plot(data, fs, 1);
%
function ma_fft_plot(data, fs, new_figure)
NNFT = length(data);   tamano = length(data);
%----- FFT
Y=fft(data,NNFT)/tamano;
f = fs/2*linspace(0,1,NNFT/2);
magnitude = abs(Y(1:NNFT/2));
if new_figure == 1
    figure;
end
plot(f, magnitude); grid minor
xlabel('Freq [Hz]');   ylabel('Amp');
