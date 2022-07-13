clc;
clf;
clear;

fm = 3;
fc = 25;
fs = 300;
t = 0: 1/fs: 2;

am = 3;
ac = 5;

//message signal
msg = am * cos(2 * %pi * fm * t);
figure(0);
plot(t, msg)
xlabel('Time', 'fontsize', 3);
ylabel('Amplitude', 'fontsize', 3);
title('Message Signal', 'fontsize', 3)

// carrier signal
car = ac * squarewave(2 * %pi * fc * t);
figure(1);
plot(t, car);
xlabel('Time', 'fontsize', 3);
ylabel('Amplitude', 'fontsize', 3);
title('Carrier Signal', 'fontsize', 3)


// PAM Signal generation
pam = msg.*car;
figure(2);
plot(t, pam);
xlabel('Time', 'fontsize', 3);
ylabel('Amplitude', 'fontsize', 3);
title('PAM Generation', 'fontsize', 3);

// demod of PAM
/*
demod = pam .* car;
k = abs(fft(demod));
p = length(t);
filt = [ones(1, 4 * fm), zeros(1, p - 4 * fm)];
out = k .* filt;
figure(3);
plot(t, ifft(out))
xlabel('Time');
ylabel('Amplitude');
title('Demodulated Signal');
*/
// demod of PAM
demod = pam .* car;
figure(3);
plot(t, demod)
xlabel('Time', 'fontsize', 3);
ylabel('Amplitude', 'fontsize', 3);
title('Demodulated Signal', 'fontsize', 3);
