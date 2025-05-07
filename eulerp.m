function y = eulerp(f,y0,t) 
  h = t(2)-t(1); 
  y(:,1) = y0; % première composante = y(1)
  for k = 1 : length(t)-1 % car on en a déjà calculé 1 en dehors de la boucle
    y(:,k+1) = y(:,k) + h*f(t(k),y(:,k)); 
  endfor
  
