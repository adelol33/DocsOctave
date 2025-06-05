function [x it r] = regfal(f,a,b,res,maxit)
  for it = 1 : maxit
    x = f(a)*(b-a)/(f(a)-f(b)) + a ;
    if f(a)*f(x) < 0 
      b = x;
    elseif f(b)*f(x) < 0
      a = x;
    endif
    r = norm(f(x));
    if r < res
      return 
    endif
  endfor
% newton pas appliquable car on ne connaît pas la fonction donc on ne peut pas connaître la dérivée. 
