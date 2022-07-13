clc;
clf;
clear;
t = [-2*%pi:0.01:2*%pi];
a = sign(t);
plot(t, a)
xlabel('Time (in seconds)', 'Fontsize', 5);
ylabel('Value of a', 'Fontsize', 5);
title("Signum function", 'Fontsize', 5);
xgrid;
