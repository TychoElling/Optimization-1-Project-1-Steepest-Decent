function [x2 ] = steep_decent(x0,n)
%Preforms n iterations
for bb = 1:n
    %disp(secant_steep_decent(2,1,x0))
    x1 = x0 - secant_steep_decent(2,1,x0) * grad_steep_decent(x0(1),x0(2));
    x0 = x1;
    %disp(bb);
    %disp(x1);
x0 = x0 + [1,0];
x2 = x1;
end