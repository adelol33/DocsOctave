function int = simpson(f,a,b,n) 
  % n = le nombre de trapèzes, n = est naturel. 
  h = (b-a)/n; % h est constant 
  int = 0; 
  for i = 1:n 
    xd = a + i*h; % point à droite 
    xg = xd - h; % point à gauche 
    xm = xd-h/2; % poi,t du milieu
    int += f(xg)+ 4*f(xm) +f(xd); 
  endfor
int *= h/6; % comme si on écrivait int = int * h/2 et sert à mettre h/2 en 
% évidence (voir formule)  
