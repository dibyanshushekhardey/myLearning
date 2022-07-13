x = [1, -2, 2]; %input sequence x
y = [1, 2, 1]; % input squence y
N1 = length(x);
N2 = length(y);
if (N1 > N2)
    x = [x, zeros(1, N1 - N2)];N1 = N2;
else
    y = [y, zeros(1, N2 - N1)];N1 = N2;
end
X = fft(x, N1);
Y = fft(y, N1);
Z= X .* Y;
z = ifft(Z, N1) %circular convulution output