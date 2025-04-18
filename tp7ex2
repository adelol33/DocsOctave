clear all; close all; clc; 
F = @(x) [x(1).^2-x(2)-1;(x(1)-2).^2+(x(2)-0.5).^2-1]; 
Fp = @(x) [2*x(1) -1;2*x(1)-4 2*x(2)-1]; 
nF = @(x) norm(F(x));
nFlim = @(x) min(nF(x), 0.2); % remplace ce qui est trop haut par un plan horizontal
X = 0 : 0.01 : 2; 
Y = 0 : 0.01 : 2; 
for i = 1: length(X)
  for j = 1:length(Y)
    Z(i,j)= nFlim([X(i); Y(j)]);
  endfor
endfor

mesh(X,Y,Z')
xlabel('x')
ylabel('y') 
zlabel('z')
x01 = [1.1; 0.2];
x02 = [1.03; 0.7];
[x1 it1 r1] = newton(F,Fp,x01, 1e-12,100)
[x1 it1 r1] = newton(F,Fp,x01, 1e-12,100)

figure(2) 
ezplot(@(x,y) x.^2-y-1);
hold on; axis equal; 
ezplot(@(x,y) (x-2).^2+(y-0.5).^2-1)

% si mesh marche pas, on utilise ezplot pour pouvoir cadrer correctement, etc
