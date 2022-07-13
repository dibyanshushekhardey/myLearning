// decide the lengthpf the x axis
t = [-2:0.01:3];
// evaluating the signal
y = exp(-t).*sin(10*3.14*t).*ustep(t+1);
figure(1);
fig1 = plot(t, y);
set(fig1,'Linewidth', 2);
xlabel("t");
ylabel("y(t)");
title("yrm time domain");
