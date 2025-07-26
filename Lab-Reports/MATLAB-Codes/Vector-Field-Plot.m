syms x y
f = input('')
p = inline(vectorize(f(1)),'x','y');
q = inline(vectorize(f(2)),'x','y');
x = linspace(0, 1, 10)
y = x;
[X, Y] = meshgrid(x,y);
u = p(X,Y)
v = q(X,Y)
quiver(X,Y,u,v,1)
axis on
xlable('x')
ylable('y')

