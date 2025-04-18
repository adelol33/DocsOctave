function [L U] = an_lu(A) % algorithme dans le chapitre 2, slide 17. Si on en a 
  % besoin à l'examen, donné dans un formulaire mais en général pas de question 
  % sur ça à l'exam.
  [m, n] = size(A);
  for k = 1:n %pas oublier de définir n.
    for j = k:n
      U(k,j) = A(k,j);
    endfor
    L(k,k) = 1; % on le met ici pour le faire qu'une fois 
    for i = k+1:n
      L(i,k) = A(i,k)/A(k,k); % le petit exposant k donne l'étape. on le met pas 
      for j = k+1:n
        A(i,j) = A(i,j) - L(i,k)*A(k,j);
      endfor
    endfor
  endfor
