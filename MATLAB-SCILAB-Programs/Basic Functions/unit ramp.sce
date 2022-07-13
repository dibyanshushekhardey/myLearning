clc;
clf;
clear;
t = [-2 * %pi: 0.01: 2 * %pi];
a = t.*(t >= 0);
plot(t, a)
xlabel('Time (in seconds)', 'Fontsize', 5);
ylabel('Value of a', 'Fontsize', 5);
title("Unit ramp function", 'Fontsize', 5);
xgrid;
