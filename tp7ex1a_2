clear all; close all; clc; 
f = @(x) besselj(0,x); % @ pour dire que ça dépend de x 
x = 0:0.1:10; 
x = 2 :0.01 : 3;
plot(x,f(x)); 
grid on; 
a = 2; b = 1; tol=1e-12; res=1e-12; maxit=100; 

[x_dico it_dico] = dico(f,a,b,tol)
[x_regfal it_regfal r] = regfal(f,a,b,res,maxit)
