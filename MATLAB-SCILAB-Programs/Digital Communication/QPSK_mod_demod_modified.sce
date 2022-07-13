clear;
clf;
close;
msg = [ 1 0 1 0 0 1 0 1] // input DATA STREAM
rb=1; //bit rate
fs=100*rb; //sampling frequency
t = 0:1/fs:length(msg)/rb
p = length(t)
inc = (p-1)/length(msg) //increment value
g = inc
j=1

//bit stream
for i=1:p
 msg2(i) =msg(j)
 if inc < i;
 j = j+1;
 inc = inc + g;
end
end

//odd bit
inc = (p-1)/length(msg) //increment value
g = inc
m=1
for i=1:(p/2)+1
 odd(i) =msg(m)
 if inc < i;
 m = m+2;
 inc = inc + g;
end
end

//even bit
inc = (p-1)/length(msg) //increment value
g = inc
m=2
for i=1:(p/2)+1
 even(i) =msg(m)
 if inc < i;
 m = m+2;
 inc = inc + g;
end
end

//plots
figure;
gcf().background = 8;
subplot(3,1,1)
plot(t,msg2)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Bit Stream", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;8,1.2]
fo = 0:1/fs:length(msg)/2

// odd bit
subplot(3,1,2)
plot(fo,odd)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Odd bit", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg)/2,1.2]

//even bit
subplot(3,1,3)
plot(fo,even)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Even bit", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg)/2,1.2]


// carriers
phase1 = %pi/4;
phase2 = phase1 + %pi/2
phase3 = phase2 + %pi/2
phase4 = phase3 + %pi/2
fc = 4*rb
carrier_1 = sin(2*%pi*fc*t + phase1)
carrier_2 = sin(2*%pi*fc*t + phase2)
carrier_3 = sin(2*%pi*fc*t + phase3)
carrier_4 = sin(2*%pi*fc*t + phase4)

//modulation
for i=1:length(fo)
 if odd(i) == 0
    if even(i) == 0
        mod(i) = carrier_1(i)
     end
    
     if even(i) == 1
        mod(i) = carrier_2(i)
     end
 end

 if odd(i) == 1
    if even(i) == 0
        mod(i) = carrier_3(i)
    end
    
    if even(i) == 1
        mod(i) = carrier_4(i)
    end
 end
end

figure;
gcf().background = 8;
subplot(2,1,1)
plot(t,msg2)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Bit Stream", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg),1.2]
subplot(2,1,2)
plot(fo,mod)

xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Modulated Signal", "fontsize", 3);
// re mod
//for i=1:length(fo)-1
// remod(2*i-1) = mod(i)
// remod(2*i) = mod(i)
//end
//remod(p) = msg(length(msg))
//subplot(3,1,3)
//plot(t,remod)
//xlabel("$Time$");
//ylabel("$Amplitude$");
//title("$Remodulated Signal$");

//demod
for i=1:length(fo)
 //00
 if mod(i) == carrier_1(i);
    odd_demod(i) = 0;
    even_demod(i) = 0;
 end 
 //01
 if mod(i) == carrier_2(i);
     odd_demod(i) = 0;
     even_demod(i) = 1;
 end
 //10
 if mod(i) == carrier_3(i);
    odd_demod(i) = 1;
    even_demod(i) = 0;
 end
 //11
 if mod(i) == carrier_4(i);
    odd_demod(i) = 1;
    even_demod(i) = 1;
 end
end
figure;
gcf().background = 8;
subplot(3,1,1)
plot(fo,odd_demod)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated Odd Bit Signal", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg)/2,1.2]

subplot(3,1,2)
plot(fo,even_demod)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated Even Bit Signal", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg)/2,1.2]

//construction demodulation
inc = (p-1)/length(msg) //increment value
g = inc
j=1
for i=1:length(fo)
 if j < g
    demod(j) = odd(i)
    demod(j+inc) = even(i)
    j=j+1
 else
    j = j + inc
    g = g + inc +inc
 end
end
demod(length(t)-3) = msg(length(msg))
demod(length(t)-2) = msg(length(msg))
demod(length(t)-1) = msg(length(msg))
demod(length(t)-0) = msg(length(msg))

subplot(3,1,3)
plot(t,demod)
xlabel("Time", "fontsize", 3);
ylabel("Amplitude", "fontsize", 3);
title("Demodulated Message Signal", "fontsize", 3);

h = gca();
h.data_bounds = [0,-0.2;length(msg),1.2]

//spectrum
frq = -fs/2:2/length(msg):fs/2
spectrum = fftshift(fft(mod))

//Spectrum of Modulated Signal
figure;
gcf().background = 8;
plot(frq, abs(spectrum'))
xlabel("frequency", "fontsize", 3)
ylabel("Amplitude", "fontsize", 3)
title("Spectrum of Modulated Signal", "fontsize", 3)
