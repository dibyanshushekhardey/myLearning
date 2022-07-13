t = [0:0.01:3 * %pi];
f = 0.5;
a = 2;
y = a * cos(2 * %pi * f * t);
xgrid;
xlabel("Time (in seconds)", "Fontsize", 4);
ylabel("Value of y", "Fontsize", 4);
title("Cosine Wave", "Fontsize", 4);
plot(t, y)
