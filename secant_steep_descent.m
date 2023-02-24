function [alpha] = secant_steep_descent(f,f_grad,x0)
fg = f_grad(x0);
fgg = @(a) f_grad(x0 - a .* fg);
fggp = @(a) fgg(a)';
phi_p = @(a) -fg * fggp(a);
%phi_p is the derivative of the phi function
alpha = secant_method(phi_p);
end
