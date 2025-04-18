function int = trapeze(f,a,b,n) 
  % n = le nombre de trapèzes, n = est naturel. 
  h = (b-a)/n; % h est constant 
  int = 0; 
  for i = 1:n 
    xd = a + i*h;
    xg = xd - h;
    int += f(xg)+f(xd);
  endfor
int *= h/2; % comme si on écrivait int = int * h/2 et sert à mettre h/2 en 
% évidence (voir formule)  
