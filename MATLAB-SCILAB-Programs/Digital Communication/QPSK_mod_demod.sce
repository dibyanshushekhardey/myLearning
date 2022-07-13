clc;
close;
clf;
clear;
// Parameters
//bitrate
Rb = 5; //Bits/sec
//carrier frequency
fcarr = 10; //Hz
//Input binary sequence (LSB to the left)
data = [ 0 0 1 0 0 1 1 1 0 0 0 1 1 1 0 1 ];
//globals
fs = 100*fcarr;
data_length = length(data);
//time sequence
t = [0:1/fs:data_length/Rb];
//frequency sequence
frq = -fs/2:fcarr/32:fs/2;
t_length = length(t);

//Program
//2bit encoding
if modulo(data_length, 2) == 0 then
    //Even number of bits
    iter = data_length/2;
    is_odd = 0;
else
    //Odd number of bits
    iter = (data_length - 1)/2;
    is_odd = 1;
end
//encoder
odd_data = 0;
even_data = 0;
j = 1;
for i = 1:iter
    odd_data(i) = data(j);
    j = j + 1;
    even_data(i) = data(j);
    j = j +1;
end
if is_odd then
    odd_data(iter+1) = data(j);
end
//transposing
odd_data = odd_data';
even_data = even_data';

odd_length = length(odd_data);
even_length = length(even_data);
//Processing data to analog signal
pulse_width = t_length/data_length;
pulse_width_odd = t_length/odd_length;
pulse_width_even = t_length/even_length;
j = 1;
last_i = 1;
last_even_i = 1;
last_odd_i = 1;
j_odd = 1;
j_even = 1;
for i = 1:t_length
    odd_data_t(i) = odd_data(j_odd);
    even_data_t(i) = even_data(j_even);
    data_t(i) = data(j);
    if (i - last_i >= pulse_width)
        last_i = i;
        j = modulo((j + 1), data_length) + 1;
    end
    if (i - last_even_i >= pulse_width_even)
        last_even_i = i;
        j_even = modulo((j_even + 1), even_length) + 1;
    end
    if (i - last_odd_i >= pulse_width_odd)
        last_odd_i = i;
        j_odd = modulo((j_odd + 1), odd_length) + 1;
    end
end
data_t = data_t';
even_data_t = even_data_t';
odd_data_t = odd_data_t';

//QPSK Modulation
phase =  %pi/4;
ncarr0 = cos(2*%pi*fcarr*t + phase);
ncarr1 = cos(2*%pi*fcarr*t + %pi + phase);
qcarr0 = sin(2*%pi*fcarr*t + phase);
qcarr1 = sin(2*%pi*fcarr*t + %pi + phase);
qpsk = 0;
for i = 1:t_length
    if even_data_t(i) == 0
        if odd_data_t(i) == 0
            qpsk(i) = ncarr0(i);
        else
            qpsk(i) = ncarr1(i);
        end
    else
        if odd_data_t(i) == 0
            qpsk(i) = qcarr1(i);
        else
            qpsk(i) = qcarr0(i);
        end
    end
end
qpsk = qpsk';

//Spectrum.

y = fftshift(fft(qpsk));

//Demodulation
for i = 1:t_length
    if qpsk(i) == ncarr0(i)
        demod_odd(i) = 0;
        demod_even(i) = 0;
    elseif qpsk(i) == ncarr1(i)
        demod_odd(i) = 1;
        demod_even(i) = 0;
    elseif qpsk(i) == qcarr1(i)
        demod_odd(i) = 0;
        demod_even(i) = 1;
    elseif qpsk(i) == qcarr0(i)
        demod_odd(i) = 1;
        demod_even(i) = 1;
    end
end

//construction demodulation
inc = (length(t)-1)/length(data) //increment value
g = inc
j=1
for i=1:length(t)
    if j < g
        demod(j) = odd_data_t(i)
        demod(j+inc) = even_data_t(i)
        j=j+1
    else
        j = j + inc
        g = g + inc +inc
    end
end

demod(length(t)-3) = data(length(data))
demod(length(t)-2) = data(length(data))
demod(length(t)-1) = data(length(data))
demod(length(t)-0) = data(length(data))

//Plotting
//Input message
gcf().background = 8;
subplot(311);
title("Message Signal", "Fontsize", 4);
plot(t, data_t, 'blue');
gca().data_bounds = [t(1), -0.5; t(length(t)), 1.5];
xlabel("$Time$");
ylabel("$Amplitude$");
xgrid;

//2 bit encoded odd bit signal
gcf().background = 8;
subplot(312);
title("2-bit encoded odd bit signal", "Fontsize", 4);
plot(t, odd_data_t, 'blue');
gca().data_bounds = [t(1), -0.5; t(length(t)), 1.5];
xlabel("$Time$");
ylabel("$Amplitude$");
xgrid;
gcf().background = 8;
subplot(313);

// 2 bit encoded even bit signal
title("2-bit encoded even bit signal", "Fontsize", 4);
plot(t, even_data_t, 'blue');
gca().data_bounds = [t(1), -0.5; t(length(t)), 1.5];
xlabel("$Time$");
ylabel("$Amplitude$");
xgrid;


// cariier signal
figure;
gcf().background = 8;
subplot(211);
title("Carrier(00) signal", "Fontsize", 4);
plot(t, ncarr0, 'blue');
xlabel("$Time$");
ylabel("$Amplitude$");
xgrid;

//QPSK Modulation
gcf().background = 8;
subplot(212);
title("QPSK Modulated Signal", "Fontsize", 4);
plot(t, qpsk, 'blue');
xlabel("$Time$");
ylabel("$Amplitude$");
xgrid;

// QPSK Spectrum
figure;
gcf().background = 8;
plot(frq, abs(y), 'black')
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("FM Spectrum of QPSK", "Fontsize", 3);
xgrid;


//deodulated stream
figure;
subplot(311);
gcf().background = 8;
plot (t , demod_odd, 'blue')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated signal odd bit", "fontsize", 3);
xgrid;
h = gca () ;
h.data_bounds =[0,-1.5;t(length(t)),1.5]

subplot(312);
gcf().background = 8;
plot (t , demod_even, 'blue')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated signal even bit", "fontsize", 3);
xgrid;
h = gca ();
h.data_bounds =[0,-1.5;t(length(t)),1.5]

subplot(313);
gcf().background = 8;
plot (t , demod, 'blue')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated signal even bit", "fontsize", 3);
xgrid;
h = gca ();
h.data_bounds =[0,-1.5;t(length(t)),1.5]
