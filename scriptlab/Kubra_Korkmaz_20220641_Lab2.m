%@author Kubra Korkmaz - ID 20220641
%@date 09.23.2022
%Script Programming Lab - task 2

%--------------------------------------------------------------------------

%************Question 1 - vectors**************
%**** 1.a ****
a = [1:2:34];
%**** 1.b ****
b=exp(a);
%**** 1.c ****
c=a./b;
%**** 1.d ****
d=c';

%--------------------------------------------------------------------------
%************Question 2 - Matrix *************
%**** 2.a ****
A=[pi/2 3i; log(2) 2*pi];

%**** 2.b ****
B=[exp(A(1,1)),exp(A(1,2))];
%**** 2.c ****
C=sum(B);
D=sum(A);

%--------------------------------------------------------------------------
%************Question 3 -Practical Application *************

%******** variables **********
E1=60;
E2=6;
E3=48;
Ri1=1;
Ri2=0.5;
R1=30;
R2=12;
R3=16;
R4=14;
R5=30;
R6=5;
%******** matrixes *************
M=[-1 1 1;
    (Ri1 + R1 + (1/(1/R5 + 1/R6))) R2 0;
    0 -R1 (1/(1/R1 + 1/R3) + R4 + 1/(1/R1 + 1/R2) + R3)];
P=[0; E1; -E3+E2];
%***********linear solving ******
X=linsolve(M,P);

%--------------------------------------------------------------------------
%Application of elementary functions and matrix operations
% P1. Indexing of vector elements

%to obtain a vector from user
n=12;
vec=zeros(1, n);
for i=1:n
    vec(1,i)=input("Enter the vector element: ");
end
%obtain B vector from vec Vector
B= vec([10:end 1:9]);
%print vector B as a result well formatted
fprintf("B=[")
fprintf("%d ", B)
fprintf("]")
