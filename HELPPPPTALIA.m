%Bougria Adel 562627

% Question 1 :
clear all; close all; clc;
% écrire matrice :

A = [0 4 3 6 6;...
9 8 1 3 4;...
7 4 9 9 7;...
0 5 1 6 7;...
1 2 7 2 0];
Asv = A ;

% factorisation :

P1 = eye(5);
P1([1,2],:) = P1([2,1],:);
A = P1*A;
L1 = eye(5);
L1(2:5,1) = -A(2:5,1)/A(1,1);
A = L1*A;

P2 = eye(5);
P2([2,3],:) = P2([3,2],:);
A = P2*A;
L2 = eye(5);
L2(3:5,2) = -A(3:5,2)/A(2,2);
A = L2*A;

P3 = eye(5);
P3([3,4],:) = P3([4,3],:);
A = P3*A;
L3 = eye(5);
L3(4:5,3) = -A(4:5,3)/A(3,3);
A = L3*A;

P4 = eye(5);
P4([4,5],:) = P4([5,4],:);
A = P4*A;
L4 = eye(5);
L4(5,4) = -A(5,4)/A(4,4);
U = L4*A

P = P4*P3*P2*P1
LP1 = P4*P3*P2*L1*P2*P3*P4;
LP2 = P4*P3*L2*P3*P4;
LP3 = P4*L3*P4;
LP4 = L4;

L = eye(5) ;
L(2:5,1) = -LP1(2:5,1);
L(3:5,2) = -LP2(3:5,2);
L(4:5,3) = -LP3(4:5,3);
L(5,4) = -LP4(5,4)

% vérification :

[l u p] = lu(Asv)




