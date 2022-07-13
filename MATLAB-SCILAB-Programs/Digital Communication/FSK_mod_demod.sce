clc;
clear;
close;
// binary data
n =input("Data Stream = ");
Rb = 1;
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
t =0:0.01:length(n) ;
for j =1: length (t)
    if t(j)<= i
        data(j)= nn(i);
    else
        i= i +1 / Rb;
        data(j)= nn(i);
    end
end

// plotting the NRZ data
figure(0);
plot(t, data');
h = gca();
h.data_bounds =[0,-1.5; length(n),1.5];
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Binary input", "fontsize", 3);

// carrier generation
fc1 = 15;    // high frequency
carrier1 = sin(2 .* %pi * fc1 * t);
figure(1);
subplot(2, 1, 1);
plot(t, carrier1)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("carrier signal 1", "fontsize", 3);

fc2 = 8;    // low frequency
carrier2 = sin(2 .* %pi * fc2 * t);
subplot(2, 1, 2);
plot(t, carrier2)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("carrier signal 2", "fontsize", 3);

// fsk signal generation
for j =1: length(t)
    if data (j)==1
        fsk(j)= carrier1(j);
    else
        fsk(j) = carrier2(j);
    end
end

// plotting 
figure(2);
plot(t, fsk');
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("frequency shift keying signal", "fontsize", 3);

// fm spectrum of the FSK Signal
frq = -fs/2:Rb/length(n):fs/2;
y = fftshift(fft(fsk));
figure(3);
//subplot(3, 1, 2);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("FM Spectrum of FSK", "Fontsize", 3);

// demodulation of the input signal
for j =1:length(t)
    if fsk(j) == carrier1(j)
        demod (j) =1
    else
        demod (j) = -1
    end
end


//plotting demodulated signal
figure(4);
//subplot (3 ,1 ,3);
plot (t , demod')
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated binary data", "fontsize", 3);
h = gca () ;
h.data_bounds =[0,-1.5;length(n),1.5]
