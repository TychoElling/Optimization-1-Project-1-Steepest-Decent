function [n] = steep_descent(x0,f,f_grad,iter)
for i = 1:iter
    x1 = x0 - secant_steep_descent(f,f_grad,x0).*f_grad(x0);
    x0 = x1;
    disp(x1)
x1 = x0+ [1,0];
n = x1 - [1,0];
end
