clear all; close all; 
l_Te = log(2)/19; 
l_I = log(2)/(6.7*3600);
l_Xe = log(2)/(9.2*3600);
A = [l_Te 0 0; -l_Te l_I 0; 0 -l_I l_Xe];
f = @(t,y) -A*y;
y0 = [1;0;0];
hstab = 2/l_Te; 
% on cherche le pique de la quantité de Xenon -- le temps ( quand il a lieu) et 
% les coolrdonnées du sommet 
T = 43200; % on prend 12h pour dépasser un peu le temps expérimental = 40606

% 1 : EULER P instable 
h = 1.01*hstab; 
t = 0 : h : T; 
yp = eulerp(f,y0,t); 
figure(1)
plot(t,yp) 

% 2 : EULER P stable osicllant : 
h = 0.99*hstab; 
t = 0 : h : T; 
yp = eulerp(f,y0,t); 
figure(2)
plot(t,yp)

% 3 : EULEUR P stable non-oscillant
h = 0.49*hstab; 
t = 0 : h : T; 
yp = eulerp(f,y0,t); 
figure(3)
plot(t,yp)

% 4 : EULEUR R

h = 10*hstab; 
t = 0 : h : T; 
yr = eulerr(f,y0,t); 
figure(4)
plot(t,yr)

% pas question d'examen 
[x,ix] = max(yr;:); 
erreurN = abs(x-0.4275)/0.4275
temps = (ix-1)*h
erreurt = abs(temps-40606)/40606 % on remarque que pour 78, on a toujours une 
% valeur inférieur à 5%
