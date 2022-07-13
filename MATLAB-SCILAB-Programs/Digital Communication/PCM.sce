clc;
clf;
clear;

fm = 5
fs = 20 * fm;
t = 0:1/fs:2;
am = 3;

msg = am * sin(2 * %pi * fm * t);
figure(0);
subplot(3, 1, 1);
plot(t, msg)
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Message signal", 'fontsize', 3);

// level shifting to onesided signal
x1 = msg + am;
disp("Discrete sampled values of message signal", x1);

//quantisation
quant = round(x1);
disp("Quantised sampled values", quant); // to display quantised values

// encoding the binary data
encode = dec2bin(quant);

// recovering the analog signal
decode = bin2dec(encode);
recover = decode - am;
subplot(3, 1, 2);
plot(t, recover)
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Recovered signal", 'fontsize', 3);
h = gca();
h.data_bounds = [0, -3;2, 3];
subplot(3, 1, 3);
plot(t, msg, t, recover, 'r');
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Recovered V/S Original signal", 'fontsize', 3);
h = gca();
h.data_bounds = [0, -3;2, 3]
