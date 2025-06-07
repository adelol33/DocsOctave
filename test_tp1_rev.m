%tp 3 exo 1
clear all; close all;
A = ones(5,5) + 4*eye(5);
Asv = A;
b = 9*ones(5,1);
[L9 U] = an_lu_rev(A);
y = L9\b ; %pour trouver y et on fqit \ seulement prcq L triangulaire
x = U\y ; %pour trouver x
sol = A\b;
err = norm(sol-x)/norm(sol);

A2 = diag(ones(5,1),0) + diag(ones(4,1), -1) + diag(-1000*ones(4,1), 1);
Asv2 = A2;
b2 = 999*ones(5,1) - [0;1;1;1;1001];
[L2 U2] = an_lu_rev(A2);
y2 = L2\b2 ; %pour trouver y et on fqit \ seulement prcq L triangulaire
x2 = U2\y2 ; %pour trouver x
sol2 = A2\b2;
err2 = norm(sol2-x2)/norm(sol2);

A3 = diag(ones(5,1),0) + diag(ones(4,1), -1) + diag(-1000*ones(4,1), 1) + diag(-1000*ones(1,1),-4);
Asv3 = A3;
b3 = 999*ones(5,1) - [0;1;1;1;1];
[L3 U3] = an_lu_rev(A3);
y3 = L3\b3 ; %pour trouver y et on fqit \ seulement prcq L triangulaire
x3 = U3\y3  %pour trouver x
sol3 = A3\b3
err3 = norm(sol3-x3)/norm(sol3)

% on teste PA = LU :
Z = diag(ones(5,1),0) + diag(ones(4,1), -1) + diag(-1000*ones(4,1), 1) + diag(-1000*ones(1,1),-4);
P1 = eye(5);
P1([1,5],:) = P1([5,1],:);
Z = P1*Z;
L1 = eye(5) ;
L1(2:5,1) = -Z(2:5,1)/Z(1,1);
Z = L1*Z;

P2 = eye(5);
P2([2,5],:) = P2([5,2],:);
Z = P2*Z;
L2 = eye(5) ;
L2(3:5,2) = -Z(3:5,2)/Z(2,2);
Z = L2*Z;

P3 = eye(5);
P3([3,5],:) = P3([5,3],:);
Z = P3*Z;
L3 = eye(5) ;
L3(4:5,3) = -Z(4:5,3)/Z(3,3);
Z = L3*Z;

P4 = eye(5);
P4([4,5],:) = P4([5,4],:);
Z = P4*Z;
L4 = eye(5) ;
L4(5,4) = -Z(5,4)/Z(4,4);
U5 = L4*Z;


P = P4*P3*P2*P1;
LP1 = P4*P3*P2*L1*P2*P3*P4;
LP2 = P3*P2*L2*P2*P3;
LP3 = P2*L3*P2;
LP4 = L4;

L5 = eye(5);
L5(2:5,1) = -LP1(2:5,1);
L5(3:5,2) = -LP2(3:5,2);
L5(4:5,3) = -LP3(4:5,3);
L5(5,4) = -LP4(5,4);

y5 = L5\b3;
x5 = U5\y5
err4 = norm(sol3-x5)/norm(sol3)
[l u p] = lu(Asv3);
norm(l-L5);
norm(u-U5);
norm(p-P);
u = eps/2;

c1 = err3/cond(Asv3)/u
c2 = err4/cond(Asv3)/u
