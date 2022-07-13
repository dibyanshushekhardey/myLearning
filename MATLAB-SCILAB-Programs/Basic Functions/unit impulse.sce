clc;
clf;
clear;
t = [-2 * %pi: 0.01: 2 * %pi];
y = 1.*(t == 0);
plot(y, t)
xlabel('Time (in seconds)', 'Fontsize', 5);
ylabel('Value of y', 'Fontsize', 5);
title("Unit impulse function", 'Fontsize', 5);

