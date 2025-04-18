clear all; clc; close all; 
f = @(t) exp(-t.^2 + 22*t - 120) - 0.5; % 0.5 = constante additive 
fp = @(t) exp(-t.^2 + 22*t -120).*(-2*t + 22); % le point signifie élément par élément. 
x = -10 : 0.1 : 10 ; % combien de nombres ? -- (10 - (-10)) / 0.1 + 1 pour une borne
x = 8 : 0.01 : 14; % -b/2a = 11
plot(x,f(x))
grid on 
