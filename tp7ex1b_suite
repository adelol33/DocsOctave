%tp7ex1b.m
%suite
%Solution demandée proche de 9.7 et l'autre 12.3
clear all;close all;clc
f = @(t) exp(-t.^2 + 22*t - 120) - 0.5; % 0.5 = constante additive 
fp = @(t) exp(-t.^2 + 22*t -120).*(-2*t + 22); % le point signifie élément par élément. 
a = 9.5;
b=10;
tol = 1e-12; 
res = 1e-12; 
maxit=100; 
[x_dico it_dico] = dico(f,a,b,res,maxit)
[x_regfal it_regfal r_regfal] = regfal(f,a,b,res,maxit)

x0 = 9.1 %tester 9.1, 9 et 8
[x_newton it_newton r_newton] = newton(f,fp,x0,res,maxit)
[x_rl it_rl r_rl] = Newton_rl(f,fp,x0,res,maxit)
