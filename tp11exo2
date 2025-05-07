clear all; close all; 
f = @(t,y) [y(1)-0.5*y(1)*y(2) ; 0.1*y(1)*y(2) - y(2)]; 
y0 = [1;1]; 
h = 0.01; % on prend pas assez petit car temps d'étude = 20s 
% change fort 
T = 20; 
t = 0 : h : T; 
yp = eulerp(f,y0,t); 
yr = eulerr(f,y0,t); 
plot(t,yp(1,:),'--b') % proies en pointillés bleus par eulerp
hold on; 
plot(t,yr(1,:), '-b') % ligne continue
plot(t,yp(2,:), '--r') % prédateurs en rouge  
plot(t,yr(2,:), '-r') 
