function [alpha] = secant_steep_descent(f,f_grad,x0)
fg = f_grad(x0);
fgg = @(a) f_grad(x0 - a .* fg);
fggp = @(a) fgg(a)';
phi_p = @(a) -fg * fggp(a);
disp(fg)
%phi_p is the derivative of the phi function
a0 = 0.01;
a1 = 0.4;
disp(fgg(a1))
for i = 1:2
    a2 = a1 - (a1 - a0) * phi_p(a1) / (phi_p(a1) -phi_p(a0));
    %disp(phi_p(a1))
    %disp(phi_p(a0))
    a0 = a1;
    a1 = a2;
alpha = a2;
end