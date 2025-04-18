function y = sinxsurxpp(x)
  if x == 0
    y = -1/3; % limite de la dérivée quand elle tend vers 0
  else 
    y = ((2-x.^2).*sin(x)-2*x.*cos(x))./x.^3; 
  endif
