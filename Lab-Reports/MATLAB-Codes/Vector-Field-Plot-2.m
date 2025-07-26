syms x y z
f = input('Enter: ')
p = inline(vectorize(f(1)),'x','y','z');
q = inline(vectorize(f(2)),'x','y','z');
r = inline(vectorize(f(3)),'x','y','z');
x = linspace(0, 1, 10)
y = x;
z = x;
[X, Y, Z] = meshgrid(x,y,z);
u = p(X,Y,Z)
v = q(X,Y,Z)
w = r(X,Y,Z)
quiver3(X,Y,Z,u,v,w,1)
axis on
xlabel('x')
ylabel('y')
zlabel('z')
