A= [1  0  0  1  1 0 1; 0 1 0 1 0 1 1; 0 0 1 0 1 1 1];
b=[0;0.2;0.2];
cvx_begin quiet
variable x(7)
minimize( norm(x,1))
subject to
        A*x==b;
cvx_end
disp("solution vector is")
x