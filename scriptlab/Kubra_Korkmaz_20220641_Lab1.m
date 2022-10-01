%@author Kubra Korkmaz 
%@id 20220641
%@group Erasmus
%@date 18.09.2022

%**********Q2***********
A=[2 9 0 0; 0 4 1 4; 7 5 5 1; 7 8 7 4];
k=[-1 6 0 9];
b=k';
a=[3 -2 4 -5];

%**********Q3************

%**********3.a***********
m1=A*b;

%**********3.b***********
m2=a+4;

%**********3.c***********
m3=b*a;

%**********3.d***********
%their dimensions are not suitable for multiplication
t=b';
m4=a.t;

%**********3.e***********
t2=a';
m5=A*t2;

%*********Q4*************
%A*A and A^2 have the same result because, multiplying a number by itself
%means square power of it but A.^2 means taking square power of each element in
%the matrix.


%*********Q5************

A(2:3,:)

%*********Q6************
%****    Ax=b    *******
x=A\b;
%**** to check if the result is true or not****
y=inv(A);
x=y*b;