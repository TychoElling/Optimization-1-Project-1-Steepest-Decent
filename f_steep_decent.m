function [y] = f_steep_decent(x1,x2)
y = 100*(x2-x1^2)^2 +(1-x1)^2;
end