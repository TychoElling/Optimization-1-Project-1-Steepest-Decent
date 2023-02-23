function [y] = grad_steep_decent(x1,x2)
%gradient f(x)

y = [400*x1^3-400*x1*x2+2*x1-2, 200*(x2-x1^2)];
end