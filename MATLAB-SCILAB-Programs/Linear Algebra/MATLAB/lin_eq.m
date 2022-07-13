function x = lin_eq(A, B)
%This function is used to find the solution of Ax = B
[M, N] = size(A)
if size(B, 1) ~= M
    error('Incompatible dimension of A and B in lin_eq()!')
end
if M == N, x = inv(A) * B;
elseif M < N
    x = pinv(A)*B; %A’*(A*A’)^-1*B; or eye(size(A,2))/A*B
else %LSE solution (2.1.10) forM>N
    x = pinv(A)*B; %(A’*A)^-1*A’*B orx=A\B
end

end