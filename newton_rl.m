function [x it r] = Newton_rl(f,fp, x0, res, maxit)
x = x0; 
for it = 1 : maxit
  r = norm(f(x)); 
  if r < res
    it --; 
    return 
  endif
  d = fp(x)\f(x); 
  a = 1; 
  while true 
    xn = x-d*a;
    if norm(f(xn)) < r
      x = xn; 
      break 
    endif 
    a = a/2; 
  end
end
