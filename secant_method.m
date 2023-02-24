function [alpha] = secant_method(f_p)
a0 = 0.01;
a1 = 0.4;
for i = 1:100
    if f_p(a1) - f_p(a0) == 0
        break
        %Stops running when we hit a minimum, oitherwise we get NaN
    end
    a2 = a1 - (a1 - a0) * f_p(a1) / (f_p(a1) -f_p(a0));
    a0 = a1;
    a1 = a2;
alpha = a2;
end
end