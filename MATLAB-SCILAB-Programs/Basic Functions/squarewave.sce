t = 0:1/(1000 * 50):0.5;
y = 5 * squarewave(2 * %pi * 10 * t);
plot(t, y);
xgrid;
xlabel("Time (in seconds)", "Fontsize", 4);
ylabel("Value of y", "Fontsize", 4);
title("Square Wave", "Fontsize", 4);
