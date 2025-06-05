%tp4ex1 
clear all; 
A = [1 -100 0 0; ... % ... pour passer à la suite
1 1 -100 0; ... 
0 1 1 -100; ... 
-100 0 1 1];  

% Puisque la matrice A va changer (quand elle est multipliée par P, s'appelle 
% toujours A) donc on va la stocker : 
Asv = A;  % pour vérifier avec LU d'octave à la fin

% étape 1 : on permutte dans la première colonne et on mets des 0 

P1 = eye(4); 
P1([1,4],:) = P1([4,1],:); 
A = P1*A; 
L1 = eye(4); 
L1(2:4, 1) = -A(2:4,1)/A(1,1); 
A = L1*A; 

% étape 2 : pareil pour 3ème ligne  

P2 = eye(4); P2([2,4],:) = P2([4,2],:) ; A = P2*A; 
L2 = eye(4); L2(3:4, 2) = -A(3:4, 2)/A(2,2); A = L2*A; 

% étape 3 : on permutte et met des 0 dernière ligne 

P3 = eye(4); P3([3,4],:) = P3([4,3],:); A = P3*A; 
L3 = eye(4); L3(4,3) = -A(4,3)/A(3,3); U = L3*A

P = P3*P2*P1; 
Lp1 = P3*P2*L1*P2*P3;
Lp2 = P3*L2*P3; 
Lp3 = L3; 

L = eye(4); 
L(2:4, 1) = -Lp1(2:4, 1); 
L(3:4, 2) = -Lp2(3:4, 2); 
L(4, 3) = -Lp3(4, 3); % Pour calculer la matrice L = L^-3*L^-2*L^-1
[l u p] = lu(Asv); % pour avoir la factorisation LA = UP faite par Octave
norm(U-u)
norm(P-p) 
norm(L-l) % normalement reste l'erreur d'arrondi qui vaut approx 10^-14
