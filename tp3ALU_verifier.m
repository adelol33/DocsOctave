clear all; close all; clc;
A1 = ones(5,5)+4*eye(5)
b1 = 9*ones(5,1)
A2 = eye(5) + diag(ones(4,1), -1) + -1000*diag(ones(4,1), 1)
b2 = [999;998;998;998;-2]
A3 = A2; A3(5,1)=-1000
b3 = b2 ; b3(5,1) = 998
x1_exact = ones(5,1)
x2_exact = -1*ones(5,1)
x3_exact = -1*ones(5,1)
% Pour afficher les matrices dans la fenêtre de commande, on appuie sur F5
% Et pour afficher tout les chiffres sans arrondi, on écrit format long 
u = eps/2; 

% résolution de Ax = b par A = LU
[L1 U1] = an_lu(A1); 
y1 = L1\b1; 
x1_LU = U1\y1 % on veut le montrer pour voir l'erreur, puis on prend la formule 
% de l'erreur relative sur x et on résout pour C (on veut que C soit petit)
err1 = norm(x1_exact - x1_LU)/norm(x1_exact)
c1 = err1/cond(A1)/u

[L2 U2] = an_lu(A2); 
y2 = L2\b2; 
x2_LU = U2\y2 
err2 = norm(x2_exact - x2_LU)/norm(x2_exact)
c2 = err2/cond(A2)/u

[L3 U3] = an_lu(A3); 
y3 = L3\b3; 
x3_LU = U3\y3 
err3 = norm(x3_exact - x3_LU)/norm(x3_exact)
c3 = err3/cond(A3)/u
