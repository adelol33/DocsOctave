%tp5ex1.m
clear all;

A = round(inv(hilb(6)));
A = A(:,1:4)

b1 = [11586;-31520;2067240;-5259240;5709060;-2220372]
b2 = ones(6,1)

% Résolution par PA = LU :

AtA = A'*A; 
Atb1 = A'*b1;
Atb2 = A'*b2;

[L U P] = lu(AtA);
x1_PALU = U\(L\(P*Atb1))
x2_PALU = U\(L\(P*Atb2))

% Résolution avec QR (+ stable) :
 
[Q R] = qr(A,0); % le ( ,0) donne les matrices réduites
x1_QR = R\(Q'*b1)
x2_QR = R\(Q'*b2)

norm(x1_PALU - x1_QR)
norm(x2_PALU - x2_QR)

% Pour le conditionnement : sous question examen

KA = cond(A); 
r1 = b1-A*x1_QR;
r2 = b2-A*x2_QR;
KMCA1 = KA + KA^2*norm(r1)/norm(A)/norm(x1_QR) 
cosT1 = norm(b1-r1)/norm(b1) % en partant de l'équation de r1, on a A*x1
cosT2 = norm(b2-r2)/norm(b2)
KMCb1 = KA/cosT1
KMCb2 = KA/cosT2

x1_exact[1, -1, 1, -1];

% vérification que solution exacte : 

norm(A*x1_exact - b1) % doit valoir rigoureusement 0 car solution exacte 

% Erreur relative : 

err1_PALU = norm(x1_eaxct - x1_PALU)/norm(x1_exact)
err1_QR = norm(x1_exact - x1_QR)/norm(x1_exact)

% normalement la plus proche de 0 est celle pour QR car a stabilité directe 
% Puisque Kmc = KA -- KA.u erreur maximale sur le résultat 
% Si KA.u est plus petite que u, c'est bon 
