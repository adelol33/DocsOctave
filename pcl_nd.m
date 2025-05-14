function y = pcl_nd(f,m)
  % Nieumann ici ma belle 
  % m = le nombre de segments tous de longueur h 
  L = 1; 
  h = L/m; 
  h2 = h*h;  
  A = (2 + h2)*eye(m) - diag(ones(m-1,1),-1) - diag(ones(m-1,1),1); 
  % diff entre eye et diag et pourquoi ones(m-1,1)
  % le deuxième -1 veut dire que il est une unité en dessous de la diagonale 
  A(1,1) /= 2; % pour que le premier terme soit divisé par 2 
  for k = 1:m
    xk = (k-1)/m;
    b(k) = h2*f(k); 
  endfor
  b(1) /= 2; % vecteur ligne par défaut donc on prend la transoposée en dessous 
  y = A\b'; 
  y(m+1) = 0; 
  
