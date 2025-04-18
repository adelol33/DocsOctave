clear all, close all
% h choisit = 1/10 et on doit le diminuer si on constate un écart assez grand
% entre solution d'eulerp et eulerR
f = @(t,y) y*cos(t) + sin(y); 
y0 = 1; 
h = 0.01; 
T = 10; 
t = 0 : h : T; 
yp = eulerp(f,y0,t); 
yr = eulerr(f,y0,t); 
figure(1) % on aura deux courbes : si éloignées, changer h sinon good
% eulerp en bleu eulerr en vert 
plot(t,yp,'b'); hold on 
plot(t,yr,'g')
% Eulerp d'ordre 1 --> si h divisé par 2, erreur divisée par 2 
h1 = 0.1;t1 = 0:h1:T; 
yp1 = eulerp(f,y0,t1);

h2 = h1*1/2; t2 = 0:h2:T; 
yp2 = eulerp(f,y0,t2) ;

h3 = h1/16; % cette solution numérique sert de solution exacteeeuh
t3 = 0: h3 : T; 
yp3 = eulerp(f,y0,t3) ;

err1 = yp1 - yp3(1 : 16 : end)  
err2 = yp2 - yp3(1:8:end) 
figure(2); 
plot(t1,err1,'b'); hold on 
plot(t2,err2,'g') % pour plot les erreurs 

% pour pouvoir comparer et voir que l'erreur a été divisée par 2, on écrit : 
rapport = norm(err1, 'inf')/norm(err2, 'inf') % on prend la norme infinie car 
% maximum de la fonction 
