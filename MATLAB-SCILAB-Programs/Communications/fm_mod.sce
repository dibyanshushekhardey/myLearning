clc;
clf;
clear;

fm = 3;
fc = 30;
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

// fREQUENCY MODULATION GENERATION
kf = 3;
mod_index = (kf * am) / fm;
fm_mod = ac * cos((2 * %pi * fc * t) + (mod_index .* sin(2 * %pi * fm * t)));
figure(2);
plot(t, fm_mod)
xlabel('Time', "Fontsize", 3);
ylabel("Amplitude", "Fontsize", 3);
title("Frequency modulated generated wave", "Fontsize", 3);

// fm spectrum
frq = -fs/2:fc/20:fs/2;
y = fftshift(fft(fm_mod));
figure(3);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("FM Spectrum", "Fontsize", 3);
