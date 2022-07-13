clc;
clf;
clear;

fm = 10;
fc = 300;
fs = 100 * fc;
am = 2;
ac = 4;

t = 0:1/fs:2/fm
//message signal generation
msg = am * cos(2 * %pi * fm * t);

plot(t, msg)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Message Signal", "Fontsize", 3);

// carrier signal generation
car = ac * cos(2 * %pi * fc * t);

figure(1);
plot(t, car)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Carrier Signal", "Fontsize", 3);

//hilbert transform of message signal
h_msg = imag(hilbert(msg));
figure(2);
plot(t, h_msg)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Message Signal Hilbert Transform", "Fontsize", 3);

//hilbert transform of the carrier signal
h_car = imag(hilbert(car));
figure(3);
plot(t, h_car)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Carrier Signal Hilbert Transform", "Fontsize", 3);


// ssb modulation
//lower sideband
ssb_l = (msg .* car) + (h_msg .* h_car);
figure(4);
plot(t, ssb_l)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("SSB LSB Modulation", "Fontsize", 3);


//upper sideband
ssb_u = (msg .* car) - (h_msg .* h_car);
figure(5);
plot(t, ssb_u)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("SSB USB Modulation", "Fontsize", 3);

// frequency spectrum
// Lsb
frq = -fs/2:fc/60:fs/2;
y = fftshift(fft(ssb_l));
figure(6);
//subplot(3, 1, 1);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("Frequency spectrum of SSB LSB", "Fontsize", 3);

// Lsb
frq = -fs/2:fc/60:fs/2;
y = fftshift(fft(ssb_u));
figure(7);
//subplot(3, 1, 1);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("Frequency spectrum of SSB USB", "Fontsize", 3);

//demodulation of ssb sc signal
demod = ssb_l .* car;
figure(8);
plot(t, demod)
xlabel("Time", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Demodulated Message", "Fontsize", 3);

//demodulated message spectrum
k = fftshift(fft(demod))
figure(9);
plot(frq, (k))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Demodulated message spectrum", "Fontsize", 3);

//message spectrum
filt = [zeros(1, find(frq==(-4*fm))), ones(1, find(frq==(4*fm)) - find(frq==(-4*fm))), zeros(1, (length(frq) - find(frq==(4*fm))))];
yout = (abs(k) .* filt);
figure(10);
//subplot(3, 1, 1);
plot(frq, yout)
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Reconstructed message spectrum", "Fontsize", 3);

