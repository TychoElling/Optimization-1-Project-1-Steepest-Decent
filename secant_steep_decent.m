function [a2] = secant_steep_decent(a0,a1,x)
%Calcluates alphak with secant method
%Preforms two iterations
%x0,x1 are initial guesses
%f is the function being minimized
%x is the x value
%disp(phi_steep_decent(a1,x));
%disp(a0);

a2 = a1 - (a1-a0) * phi_steep_decent(a1,x)/(phi_steep_decent(a1,x) -phi_steep_decent(a0,x));
%disp((phi_steep_decent(a1,x) -phi_steep_decent(a0,x)));

for i = 1:10
    a2 = a1 - (a1-a0) * phi_steep_decent(a1,x)/(phi_steep_decent(a1,x) -phi_steep_decent(a0,x));
    a0 = a1;
    a1 = a2;





end
