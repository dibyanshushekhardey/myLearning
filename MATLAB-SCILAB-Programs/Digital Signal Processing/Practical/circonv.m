function[y] = circonv(x, h, N);
N2 = length(x);
N3 = length(h);
x = [x, zeros(1, N - N2)];
h = [h, zeros(1, N - N3)];

%circular shoft of the sequence
m = [0:1:N-1];
M = mod(-m, N);
h = h .* (M + 1);
for n = 1:1:N
    m = n - 1;
    p = 0:1:N-1;
    q = mod(p-m, N);
    hm = h .* (q+1);
    H(n,:) = hm;
end
y = x * H';