function y = eulerr(f,y0,t)
  h = t(2)-t(1); 
  y(1) = y0; 
  for k = 1:length(t) - 1 
    FCN = @(x) y(k)+h*f(t(k+1),x)-x;
    y(k+1) = fsolve(FCN,y(k)); % à étudier par cœur ma belle 
  endfor
