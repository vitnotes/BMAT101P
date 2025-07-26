clc
clear all
syms x real
f(x) = x^3; %For the other 2 equations, f(x) = 3-x^2 and f(x) = 2-2x+13
fx = diff(f(x),x);
if diff(fx,x) == 0
    sprintf('The given function is a straight line. Hence, there is no maxima or minima')
else
    c = solve(fx);
    cmin = min(double(c));
    cmax = max(double(c));
    figure(1);
    ezplot(f(x),[cmin - 2, cmax + 2]);
    title('Graph of ',f(x))
    hold on
    fxx = diff(fx,x);
    for i = 1:1:size(c)
        T1 = subs(fxx, x, c(i));
        if(double(T1) < 0)
            sprintf('x = %d is a point of local maximum and the local maximum value = %d',double(c(i)),f(c(i)))
        elseif (double(T1) > 0)
            sprintf('x = %d is a point of local minimum and the local minimum value = %d',double(c(i)),f(c(i)))
        else
            sprintf('x = %d is a point of inflection',double(c(i)))
        end
    end
end