clc;
clf;
clear;
fm = 3; // message freq
fc = 40; // carrier freq
fs = 50 * fc;
t = 0: 1/fs: 3;
am = 5;
ac = 8;

//message signal generation
msg = am * cos(2 * %pi * fm * t);

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
k = 1 / ac;
u = k * am

//amplitude modulated wave
am_mod = (1 + k .* msg) .* car;
subplot(3, 1, 3);
plot(t, am_mod)
