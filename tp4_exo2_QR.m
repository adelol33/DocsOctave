%tp4ex2.m
clear; close; format short;

A = [1 -100 0 0 ;...
     1 1 -100 0 ;...
     0 1 1 -100 ;...
     -100 0 1 1 ];
Asv = A;

%etape1
x=A(1:4 , 1)
x(1) = x(1) + sign(x(1))*norm(x) %normalementv
v1 = x/norm(x);
A(1:4 , 1:4) =  A(1:4,1:4) - v1*(2*(v1'*A(1:4,1:4))

%etape2
x = A(2:4,2);
x(1) = x(1) + sign(x(1))*norm(x); %normalementv %premierecomposante
v2 = x/norm(x);
A(2:4 , 2:4) -= v2*(2*(v2'*A(2:4,2:4)); %revientaumême
%verifierquilyades0endessousdupivot

%etape3
x = A(3:4,3);
x(1) = x(1) + sign(x(1))*norm(x); %normalementv %premierecomposante
v3 = x/norm(x);
A(3:4 , 3:4) -= v3*(2*(v3'*A(3:4,3:4)):

%ConstructiondeRetQ
R=A;
Q = eye(4);
Q(3:4,3:4) -= v3*(2*(v3'*Q(3:4,3:4)));
Q(2:4,2:4) -= v2*(2*(v2'*Q(2:4,2:4)))
Q(1:4,1:4) -= v1*(2*(v1'*Q(1:4,1:4)))

%vérification
[q r] = qr(asv)
norm(R-r)
norm(Q-q)
norm (Asv - Q * R) %car ASV = Q*R
