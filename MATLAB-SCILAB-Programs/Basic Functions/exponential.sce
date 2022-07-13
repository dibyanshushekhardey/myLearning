clc;
clf;
clear;
t = [0:0.01:2* %pi];
a = exp(t);
xlabel("Time (in seconds)", "Fontsize", 4);
ylabel("Value of y", "Fontsize", 4);
title("Exponential wave", "Fontsize", 4);
plot(t, a)
xgrid;

