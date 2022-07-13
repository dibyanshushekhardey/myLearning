clc;
clear;
close;
// binary data
n =input("Data Stream = ");
fc = input("Enter the carrier signal frequency = ");
Rb = 1;
fs = 100 * Rb;
for m =1:length(n)
    if n(m) ==0
        nn(m)= -1;
    else
        nn(m) =1;
    end
end

i =1 / Rb;
z = 1;
t =0:0.01:length(n) ;
for j =1: length (t)
    if t(j)<= i
        data(j)= nn(i);
    else
        i= i +1 / Rb;
        data(j)= nn(i);
    end
end

//plotting the binary input
figure (1);
plot(t ,data)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Binary input", "fontsize", 3);

h = gca() ;
h.data_bounds =[0,-1.5; length(n),1.5]

//plotting the carrier waveform

carrier =sin (2.*%pi*fc*t);
figure(2);
plot(t ,carrier)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Carrier Waveform", "fontsize", 3);

for j =1: length(t)
    if data (j)==1
        ask (j)= carrier(j);
    else
        ask (j) =0;
    end
end

// plotting ASK Signal
figure(3);
//subplot (3 ,1 ,3) ;
plot (t , ask)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Amplitude Shift Keying Signal", "fontsize", 3);


// fm spectrum of the ASK Signal
frq = -fs/2:Rb/length(n):fs/2;
y = fftshift(fft(ask));
figure(4);
//subplot(3, 1, 2);
plot(frq, abs(y))
xlabel("Frequency", "Fontsize", 3);
ylabel("Amplitude", "Fontstyle", 3);
title("FM Spectrum of ASK", "Fontsize", 3);

// demodulation of the message signal
for j =1:length(t)
    if ask(j) == carrier(j)
        demod (j) =1
    else
        demod (j) = -1
    end
end


//plotting demodulated signal
figure(5);
//subplot (3 ,1 ,3);
plot (t , demod)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated Message signal", "fontsize", 3);

h = gca () ;
h.data_bounds =[0,-1.5;length(n),1.5]
