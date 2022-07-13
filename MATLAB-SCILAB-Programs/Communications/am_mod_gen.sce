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
//subplot(3, 1, 1)

plot(t, msg)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Message Signal", "Fontsize", 3);

// carrier signal generation
car = ac * cos(2 * %pi * fc * t);
//subplot(3, 1, 2)
figure(1);
plot(t, car)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Carrier Signal", "Fontsize", 3);

//modulation index
ka = 1 / ac;
u = ka * am

//amplitude modulated wave
am_mod = (1 + ka .* msg) .* car;
//subplot(3, 1 ,3);
figure(2);
plot(t, am_mod)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Amplitude Modulated Signal", "Fontsize", 3);

// am spectrum
frq = -fs/2:fc/60:fs/2;
y = fftshift(fft(am_mod));
figure(3);
//subplot(3, 1, 1);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("AM Spectrum", "Fontsize", 3);

// demodulation of AM signal
demod = am_mod .* car;
//subplot(3, 1, 2);
figure(4);
plot(t, demod)
xlabel("Time", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Demodulated Message", "Fontsize", 3);

//demodulated message spectrum
k = fftshift(fft(demod));
filt = [zeros(1, find(frq==(-4*fm))), ones(1, find(frq==(4*fm)) - find(frq==(-4*fm))), zeros(1, (length(frq) - find(frq==(4*fm))))];
//subplot(3, 1, 3);
figure(5);
plot(frq, (k))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Demodulated message spectrum", "Fontsize", 3);

//message spectrum
yout = (abs(k) .* filt);
figure(6);
//subplot(3, 1, 1);
plot(frq, yout)
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Demodulated message spectrum", "Fontsize", 3);



