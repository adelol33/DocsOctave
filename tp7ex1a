function [x it] = dico(f,a,b,tol)
  it = 0; 
  while abs(a-b)>tol
    x = (a+b)/2; % sans la virgule, on voit les xk (donc les milieux) -- intéressant parfois. 
    it ++ % équivaut à it += 1.
    if f(a)*f(x) < 0 % pas oublier c'est l'image f(x) et pas juste x.
      b = x; 
    elseif f(b)*f(x) > 0
      a = x;
    else 
      return % (break suffit).
    endif
  endwhile
