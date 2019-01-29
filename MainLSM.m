clear all;

mat = ReadFile('LSI2.txt');

% degree and number of pts
n = mat(1,1);
deg = mat(2,1);

% g the x and y points--> get the vector and matrix
[x,y] = pts(mat,n);
[C,D] = callLSM(x,y,deg,n);

% Solve system of equations
M = (inv(C)) * D;

% n intervals
xx = [x(1,1):0.1:x(n,1)];

% poly approx
yy = getPoly(M,xx,deg);

% print coeff and plot poly
pCoeff(deg,M);
plot(xx,yy,x,y,'*');


