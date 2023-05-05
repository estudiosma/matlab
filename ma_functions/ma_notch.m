% 
% Version 1.0
% Date: 05-may-2022
% Autor: Molina Vidal D.A. by Estudios MA
% Contact: estudiosma01@gmail.com
% Download more functions on our Github:
% https://github.com/estudiosma/matlab
%
% [signal_f] = ma_notch(data, fs, f_notch)
%
% Example:
% data = ;  % 'data' is a vector Nx1
% fs = ;    % sampling frequency
% signal_f = ma_notch(data, fs, "notch60");
% signal_f = ma_notch(data, fs, "notch120");
% signal_f = ma_notch(data, fs, "notch180");
%
function [signal_f] = ma_notch(data, fs, f_notch)
switch (f_notch)
    case "notch60"
        w0 = 60/(fs/2);
        bw = w0/35;
        [num,den] = iirnotch(w0,bw);
        signal = filtfilt(num,den, data);
    case "notch120"
        w0 = 120/(fs/2);
        bw = w0/35;
        [num,den] = iirnotch(w0,bw);
        signal = filtfilt(num,den, data);
    case "notch180"
        w0 = 180/(fs/2);
        bw = w0/35;
        [num,den] = iirnotch(w0,bw);
        signal = filtfilt(num,den, data);
end
signal_f = signal;