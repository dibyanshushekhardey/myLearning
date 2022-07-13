% to design a bitterworth lowpass filter for the specifications
clear all;
alphap = .4 % passband attenuation in dB
alphas = 30; % stopband attenuation in dB
fp = 400; %passband frequency in hz
fs = 800; %stopband frequency in hz
F = 2000; %sampling frequency in hz
omp = 2 * fp / F; 
oms = 2 * fs / F;

% to find cutoff frequency and order of the filter
[n, wn] = buttord(omp, oms, alphap, alphas);
% system function of the filter
[b, a] = butter(n, wn);
w = 0:0.01:pi;
[h, om] = freqz(b, a, w, 'whole');
m = abs(h);
an = angle(h);
subplot(2, 1, 1);
plot(om/pi, 20 * log(m));
grid;
xlabel('Normalised frequency');
ylabel('Gain in dB');
subplot(2, 1, 2);
plot(om / pi, an);
grid;
ylabel('phase in radians');
xlabel('Normalised frequency');