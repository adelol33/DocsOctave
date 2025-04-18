clear all; close all
f = @(t,v) 9.8-0.1*v*abs(v); 
T = 5; 
h = 0.1; 
v0 = 0; 
t = 0:h:T; 
vh = heun(f,v0,t); 
vp = eulerp(f,v0,t); 
plot(t,vh,'b'); hold on 
plot(t,vp,'g')
