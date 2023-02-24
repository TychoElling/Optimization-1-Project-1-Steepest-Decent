function [y] = phi_steep_decent(alpha,x0)
%Returns the output of phi prime function
y = -1 * grad_steep_decent(x0(1),x0(2));
y = y';
a = x0-alpha.*grad_steep_decent(x0(1),x0(2));
disp(grad_steep_decent(a(1),a(2)))
disp(y)
y = y * grad_steep_decent(a(1),a(2));
end