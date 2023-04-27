% 
% Version 1.0
% Date: 27-abr-2022
% Autor: Molina Vidal D.A. by Estudios MA
% Download more functions on our Github:
% https://github.com/estudiosma/matlab
%
% [f, magnitude] = fft_ma(data, fs)
% fft Discrete Fourier transform.
%
% Example:
% data = ;  % 'data' is a vector Nx1
% fs = ;    % sampling frequency
% [f, magnitude] = ma_fft(data, fs);
% figure;
% plot(f, magnitude);   grid minor
% xlabel('Freq [Hz]');  ylabel('Amp');
%
function [f, magnitude] = ma_fft(data, fs)
fprintf("Download more functions: https://github.com/estudiosma/matlab");
NNFT = length(data);   tamano = length(data);
%----- FFT
Y=fft(data,NNFT)/tamano;
f = fs/2*linspace(0,1,NNFT/2);
magnitude = abs(Y(1:NNFT/2));
