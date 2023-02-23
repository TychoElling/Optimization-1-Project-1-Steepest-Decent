function [y] = phi_steep_decent(alpha,x0)
%Returns the output of phi function
%disp(x0);
b = x0(1);
disp(alpha * grad_steep_decent(x0(1),x0(2)));
a = x0 - alpha * grad_steep_decent(x0(1),x0(2));
%disp(alpha);
y = f_steep_decent(a(1),a(2));
end