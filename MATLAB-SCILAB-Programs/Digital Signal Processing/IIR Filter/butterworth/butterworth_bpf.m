%% to designa a butterworth bandpass filter for the specifications
alphap = 2; % passband attenuation in dB
alphas = 20; % stopband attenuation in dB
wp = [.2 * pi, .4 * pi];
ws = [.1 * pi, .5 * pi];

%% to find cutoff frequency and order of the filter
[n, wn] = buttord(wp / pi, ws / pi, alphap, alphas);
%% system function of the filter
[b, a] = butter(n, wn);
w = 0:0.01:pi;
[h, ph] = freqz(b, a, w);
m = 20 * log10(abs(h));
an = angle(h);
subplot(2, 1, 1);
plot(ph / pi, m);
grid;
xlabel('Normalised frequency');
ylabel('Gain in dB');
subplot(2, 1, 2);
plot(ph / pi, an);
grid;
ylabel('phase in radians');
xlabel('Normalised frequency');