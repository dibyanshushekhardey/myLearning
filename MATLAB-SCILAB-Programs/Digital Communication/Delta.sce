clc;
clf;
clear;

fm = 5;
fs = 20 * fm;
t = 0:2/fs:2;
am = 3;

msg = am * sin(2 * %pi * fm * t);
p = length(msg);

figure(0);
subplot(4, 1, 1)
plot(t, msg);
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Message signal", 'fontsize', 3);

delta = (2 * %pi * am * fm)/fs;
disp("The Step size is", delta);

// generation of delta modulation
del_mod = 0;
for i = 1:p
    if msg(i) > del_mod(i)
        d(i) =1;
        bit_ptrn(i) = 2
        del_mod (i+1) = del_mod(i) + delta ;
    else
        d(i) =0;
        bit_ptrn(i) = -2
        del_mod (i +1) = del_mod (i) - delta ;
    end
end

// plot
figure(0);
subplot(4, 1, 2)
plot2d2(t', del_mod(1:length(del_mod) - 1))
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Delta Modulated Output", 'fontsize', 3);

// bit pattern
subplot(4, 1, 3)
plot2d3(bit_ptrn(1:length(bit_ptrn) - 1));
title("Bit Pattern","Fontsize",3);
xlabel("t","Fontsize",3);
ylabel("y","Fontsize",3);
xgrid()

// demodulation
demod = 0
for i = 1:p
    if d(i) == 1
        demod(i+1) = del_mod(i) + delta;
    else
        demod(i+1) = del_mod(i) + delta;
    end
end

// plot
subplot(4, 1, 4)
plot(t', demod(1:length(demod) - 1));
xlabel("Time", 'fontsize', 3);
ylabel("Amplitude", 'fontsize', 3);
title("Recovered message signal", 'fontsize', 3);
