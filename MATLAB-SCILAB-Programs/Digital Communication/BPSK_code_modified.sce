clc;
clear;
close;
// binary data
n =input("Data Stream = ");

t =0:0.01:length(n) ;
Rb = 2;
pd = %pi / 2;
fs = 100 * Rb;

// binary to polar conversion
for m = 1:length(n)
    if n(m) == 0
        nn(m) = -1
    else
        nn(m) = 1
    end
end

i =1 / Rb;

for j =1: length (t)
    if t(j)<= i
        data(j)= nn(i);
    else
        i= i +1 / Rb;
        data(j)= nn(i);
    end
end

// carrier generation
fc = 5;    // high frequency
carrier = sin((2 .* %pi * fc * t) + pd);

// generating BPSK signal
z = carrier';
bpsk = data .* z;

// fm spectrum of bpsk signal
frq = -fs/2:Rb/length(n):fs/2;
y = fftshift(fft(bpsk));

// demodulation of the input signal
for j =1:length(t)
    if bpsk(j) == carrier(j)
        demod (j) = 1
    else
        demod (j) = -1
    end
end

// plotting the NRZ data
figure(0);
subplot(3, 1, 1)
plot(t, data');
gcf().background = 8;
h = gca();
h.data_bounds =[0,-1.5; length(n),1.5];
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Binary input", "fontsize", 3);

// plotting the carrier wave
//figure(1);
subplot(3, 1, 2);
plot(t, carrier)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("carrier signal", "fontsize", 3);

// plotting bpsl signal
//figure(2);
subplot(3, 1, 3)
plot(t, bpsk', 'red');
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("BPSK", "fontsize", 3);

// plotting fm spectrum of the BPSK Signal
figure(1);
gcf().background = 8;
//subplot(3, 1, 2);
plot(frq, abs(y), 'black')
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("FM Spectrum of BPSK", "Fontsize", 3);


//plotting demodulated signal
figure(2);
gcf().background = 8;
//subplot (3 ,1 ,3);
plot (t , demod', 'blue')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated signal", "fontsize", 3);
h = gca () ;
h.data_bounds =[0,-1.5;length(n),1.5]

// comparing original binary signal with the demodulated signal
figure(3);
gcf().background = 8;
subplot(2, 1, 1)
plot(t, data', 'red');
h = gca();
h.data_bounds =[0,-1.5; length(n),1.5];
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Binary input", "fontsize", 3);
//xgrid();

subplot(2, 1, 2);
plot (t , demod', 'blue')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated binary data", "fontsize", 3);
//xgrid();
h = gca () ;
h.data_bounds =[0,-1.5;length(n),1.5]

// output in console
disp('Transmission Bandwidth of BPSK signal is ', 2 * Rb);
