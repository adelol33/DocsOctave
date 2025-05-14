%tp12.m
clear all; close all; 
yexacte = @(x) (sin(pi*(x+1)/2)).^2 
f = @(x) -pi^2/2*cos(pi*(x+1))+ yexacte(x); 
L = 1; 
x = 0 : L/100 : L; 
plot(x, yexacte(x), 'r')
hold on; 

m1 = 4; 
x1 = 0 : L/m1 : L; 
y1 = pcl_nd(f,m1); 
plot(x1,y1,'b')
hold on ; 

m2 = 8; 
x2=0 : L/m2 : L; 
y2 = pcl_nd(f,m2);
plot(x2, y2, 'g') 
hold on; 

m3 = 16; 
x3 = 0 : L/m3 : L; 
y3 = pcl_nd(f,m3);
plot(x3, y3, 'm')
