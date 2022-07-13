pi = 3.14;
t = [0:0.01:3*pi];
f = 0.2
a = sin(2 * pi * f * t);
xgrid;
xlabel('Time (in seconds)', 'Fontsize', 5);
ylabel('Value of a', 'Fontsize', 5);
title("Sine wave function", 'Fontsize', 5);
plot(t, a)
