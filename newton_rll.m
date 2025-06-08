function [x it r] = newton(f, fp, x0, res, maxit)
  x = x0; 
  for it = 1 : maxit
  x = x-fp(x)\f(x); 
    r = norm(f(x)); 
    if  r < res
      it --
      return 
    endif
  endfor
