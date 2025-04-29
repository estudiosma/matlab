# 📈 MA FFT Tools for MATLAB

This repository provides two lightweight and efficient MATLAB functions for frequency analysis using the Fast Fourier Transform (FFT). Designed for simplicity and ease of integration, the functions support both basic and advanced plotting options.  
> Developed by **Molina Vidal D.A.** at [Estudios MA](https://github.com/estudiosma)

## 📁 Repository Structure

```
matlab/
├── ma_function/
│   ├── ma_fft.m         % Compute FFT magnitude
│   └── ma_fft_plot.m    % Compute and plot FFT
├── README.md
```

## 🚀 Functions Overview

### 🔹 `ma_fft`

Computes the **magnitude spectrum** of a signal using FFT.

**Syntax:**
```matlab
[f, magnitude] = ma_fft(data)
[f, magnitude] = ma_fft(data, fs)
```

**Inputs:**
- `data`: Numeric vector or matrix (Nx1 or NxM), where N = samples.
- `fs` *(optional)*: Sampling frequency in Hz. Default = `1`.

**Outputs:**
- `f`: Frequency vector (Hz).
- `magnitude`: Magnitude of the FFT.

---

### 🔹 `ma_fft_plot`

Computes and **plots** the magnitude spectrum.

**Syntax:**
```matlab
[f, magnitude] = ma_fft_plot(data)
[f, magnitude] = ma_fft_plot(data, fs)
[f, magnitude] = ma_fft_plot(data, fs, showPlot)
[f, magnitude] = ma_fft_plot(data, fs, showPlot, newFigure)
```

**Inputs:**
- `data`: Time-domain signal(s).
- `fs` *(optional)*: Sampling frequency. Default = `1`.
- `showPlot` *(optional)*: Logical `true` to enable plotting (default = `true`).
- `newFigure` *(optional)*: Logical `true` to create a new figure (default = `true`).

**Outputs:**
- `f`: Frequency vector.
- `magnitude`: Magnitude of the FFT.

---

## 📌 Example

```matlab
% Create a sample sine wave
fs = 1000;                 % Sampling frequency (Hz)
t = 0:1/fs:1-1/fs;         % Time vector
signal = sin(2*pi*50*t);   % 50 Hz sine wave

% Compute and plot FFT
ma_fft_plot(signal, fs);

% Or compute FFT without plotting
[f, mag] = ma_fft(signal, fs);
```

---

## 📦 Installation

Clone the repository and add the folder to your MATLAB path:
```matlab
addpath('ma_function')
```
Or permanently add it using the `pathtool`.

---

## 📄 Version

- **Version:** 1.0  
- **Date:** 28-Apr-2025

---

## 👨‍💻 Author

**Molina Vidal D.A.**  
✉️ estudiosma01@gmail.com  
🔗 [GitHub: estudiosma](https://github.com/estudiosma)

---

## 📝 License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute it.

---

## ⭐ Star This Project!

If you find this useful, please ⭐ star the repository and share it with your fellow MATLAB users!
