clear all; close all; 
f = @(x) 2/sqrt(pi)*exp(-x^2); % f uniquement utilisée sur des scalaires 
fpp = @(x) 4/sqrt(pi)*exp(-x.^2).*(2*x.^2-1); % produit d'un vecteur ligne par un vecteur ligne -> .
a = 0; 
b = 2; 
x = a : 0.01 : b; 
plot(x,abs(fpp(x)))
c = 0 ; 
majorant = abs(fpp(c)); 
h = sqrt(12e-6/(b-a)/majorant)
n = ceil((b-a)/h) % puisqu'on a dit que n naturel : on prend naturel au dessus
% ceil = fonction plafond pour prendre au dessus 
% floor fonction pour prendre en dessous 
% pas de ; pour s'assurer qu'il n'y a pas de partie imaginaire lol 
int1 = trapeze(f,a,b,n)
int2 = simpson(f,a,b,n) 
int3 = erf(2) % solution exacte donnée dans l'énoncé  
err1 = abs(int1-int3)
err2 = abs(int2 - int3) % il faut que l'erreur soit inférieur à 10^-6
