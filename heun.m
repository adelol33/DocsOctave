function y = heun(f,y0,t) 
  h = t(2)-t(1); 
  y(1) = y0; % première composante = y(1)
  for k = 1 : length(t)-1 % car on en a déjà calculé 1 en dehors de la boucle
    fk = f(t(k),y(k));
    y(k+1) = y(k) + h/2*(fk+f(t(k+1),y(k)+h*fk)); 
  endfor
  
