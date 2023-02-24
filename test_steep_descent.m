function[n] = test_steep_descent(x0,iter)
f = @(x) 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
f_grad = @(x) [400*x(1)^3-400*x(1)*x(2)+2*x(1)-2, 200*(x(2)-x(1)^2)];
n = steep_descent(x0,f,f_grad,iter);
end