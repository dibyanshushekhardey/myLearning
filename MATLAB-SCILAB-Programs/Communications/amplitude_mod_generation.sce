clc;
clf;
clear;
fm = 3; // message freq
fc = 20; // carrier freq
fs = 5 * fc;
t = 0: 1/fs: 3;
am = 5;
ac = 8;

//message signal generation
msg = am * cos(2 * %pi * fm * t);
figure;
subplot(3, 1, 1);
plot(t, msg)
xlabel('Time');
ylabel('Amplitude');
title('Message Signal')

//carrier signal
car = ac * cos(2 * %pi * fc * t);
subplot(3, 1, 2);
plot(t, car)

//modulation index
ka = 1 / ac;
u = ka * am

//amplitude modulated wave
am_mod = (1 + ka .* msg) .* car;
subplot(3, 1 ,3);
plot(t, am_mod)

// am spectrum

freq = -fs/2:fc/60:fs/2;
y = fftshift(fft(am_mod));
figure(2)
subplot(3, 1, 1);
plot(freq, abs(y))


//demodulated signal
demod = am_mod .* car;
k = abs(fft(demod));
p = length(t);
filt = [ones(1, 4 * fm), zeros(1, p - 4 * fm)];
out = k .* filt;
subplot(3, 1, 3)
plot(t, ifft(out))


