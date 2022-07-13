clear all;
n = 0:7;
x = [1, 2, 1, 4];
h = [1, 1, 1, 1];
Nx = length(x);
Nh = length(h);
N = 8;
if(N < max(Nx, Nh))
    error("N musrt be >= max(Nx, Nh)");
end
y = circonv(x, h, N)