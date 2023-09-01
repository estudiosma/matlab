% 
% Version 1.1
% Date: 31-ago-2023
% Autor: Molina Vidal D.A. by Estudios MA
% Contact: estudiosma01@gmail.com
% Download more functions on our Github:
% https://github.com/estudiosma/matlab
%
% [f, magnitude] = fft_ma(data, fs)
% fft_ma is the magnitude of the discrete Fourier transform (DFT) of 
% 'data'.
%
% Example:
% data = ;  % 'data' can be an Nx1 vector or matrix
% fs = ;    % sampling frequency
% [f, magnitude] = ma_fft(data, fs);
% figure;
% plot(f, magnitude);   grid minor
% xlabel('Freq [Hz]');  ylabel('Amp');
%
function [f, magnitude] = ma_fft(data, fs)

[row, col] = size(data);

if (col>row)
    data = data';
end

NNFT = length(data);   tamano = length(data);
%----- FFT
Y=fft(data,NNFT)/tamano;
f = fs/2*linspace(0,1,NNFT/2);
magnitude = 2*abs(Y(1:NNFT/2, :));
