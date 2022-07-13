clc;
clf;
clear;

fs = 100;
t = 0:1/fs:2;
f1 = 3;
a1 = 2
f2 = 4;
a2 = 3
f3 = 5;
a3 = 4;

// message signal 1
m1 = a1 * sin(2 * %pi * f1 * t);
figure(0);
subplot(3, 1, 1);
plot(t, m1);
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Message signal 1 sinusoidal", 'fontsize', 3);

// message signal 2
m2 = a2 * cos(2 * %pi * f2 * t);
//figure(1);
subplot(3, 1, 2);
plot(t, m2);
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Message signal 2 cosinusoidal", 'fontsize', 3);

// message signal 3
m3 = a3 * squarewave(2 * %pi * f3 * t);
//figure(2);

subplot(3, 1, 3);
plot(t,m3);
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Message signal 3 squarewave", 'fontsize', 3);

// TDM
tdm = 0
j = 1
for i = 1:3:3 * length(t)
    tdm(i) = m1(j);
    i = i + 1;
    tdm(i) = m2(j);
    i = i + 1;
    tdm(i) = m3(j);
    j = j + 1;    
end

figure(1);
plot(tdm);
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Time Division Multiplexing", 'fontsize', 3);


// demultiplexing the signal
n = 1;
for k = 1:1:length(t)
    m4(k) = tdm(n)
    n = n + 1;
    m5(k) = tdm(n)
    n = n + 1;
    m6(k) = tdm(n)
    n = n + 1;
end

figure(2);
subplot(3, 1, 1);
plot(t, m4);
xlabel("time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("DEMUX Signal for m1", 'fontsize', 3);

subplot(3, 1, 2);
plot(t, m5);
xlabel("time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("DEMUX Signal for m2", 'fontsize', 3);

subplot(3, 1, 3);
plot(t, m6);
xlabel("time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("DEMUX Signal for m3", 'fontsize', 3);
