%do_lu_dcmp
% Use LU decomposition, Gauss elimination to solve Ax = b
A = hilb(5);
[L,U,P] = lu_dcmp(A); %LU decomposition
x = [1 -2 3 -4 5 -6 7 -8 9 -10]';
b = A*x(1:size(A,1));
flops(0), x_lu = backsubst(U,forsubst(L,P*b)); %Eq.(2.4.11)
flps(1) = flops; % assuming that we have already got L\U decomposition
flops(0), x_gs = gauss(A,b); flps(3) = flops;
flops(0), x_bs = A\b; flps(4) = flops;
AI = A^-1; flops(0), x_iv = AI*b; flps(5) = flops;
% assuming that we have already got the inverse matrix
disp('x_lu x_gs x_bs x_iv')
format short e
solutions = [x_lu x_gs x_bs x_iv]
errs = [norm(A*x_lu - b) norm(A*x_gs - b) norm(A*x_bs - b) norm(A*x_iv - b)]
format short, flps