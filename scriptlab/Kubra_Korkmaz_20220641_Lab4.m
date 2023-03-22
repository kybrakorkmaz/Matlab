%@author Kubra Korkmaz id-20220641
%@date 09.10.2022
%**** Script Programming Lab - 4

%% ****** Question - 1 Makind 3D plots **********************

%% ******** 1.a ********
%%
% ********** variables *******************

theta=linspace(0, 2*pi, 360);         % 0<=theta<= 2*pi
r=linspace(0,1,360);                  % 0<=r<=1
x=r.*cos(theta);                      % x equation
y=r.*sin(theta);                      % y equation
[x,y]=meshgrid(x,y);                   
z=1-2.*x.^2-3.*y.^2;                  % z equation

%******************* plotting the equations ****
figure(1);
mesh(x,y,z);
colormap bone;
shading flat;
view(0, 45);
xlabel("x axis");
ylabel("y axis");
zlabel("z axis");
title("f(x,y)=1-2*x^2-3*y^2");
%%
%%
%**************** 1.b **************************
% **** Equations **********
[X, Y]=meshgrid(-2:0.1:2);
Z=sin(abs(X+Y)./20).*exp(- abs(X+Y));
%****** Plot the equations ********************
figure(2);
surf(X,Y,Z);
view(0,60);
shading faceted
colormap autumn
xlabel("x axis");
ylabel("y axis");
zlabel("z axis");
title("f(x,y)=sin(|x+y|/20)*e^-|x+y|")
%%
%% *******************Preparation of 3D graphics *************************
%% Creating three 3d graphs 

%***** first **********
%**** variables and equations ******
alpha=linspace(0, pi, 50);
j=linspace(0,10,50);
i=sin(alpha);
[i,j]=meshgrid(i,j);
f=1-(i.^2+j.^2);
% ****** plot the equations **********
figure(3);
surf(i,j,f);
shading flat;
colormap parula;
xlabel("x");
ylabel("y");
zlabel("z");
title("3.1-) 0<=a<=pi", "x=sin(a), 0<=y<=10, z=1-(x^2+y^2)");

%******** second
% **** variables and equations ********
[k, l]=meshgrid(-8:0.8:8);
ff=1-(k.^2+l.^2);
% ***** plot the equations ***********
figure(4)
surf(k,l,ff)
shading flat
colormap colorcube
xlabel("x")
ylabel("y")
zlabel("z")
title("3.2-) -8<=x,y<= 8,  z=1-(x^2+y^2)")
%*********** third
% **** variables and equations ********
a=linspace(-10, 10, 50);
xx=a+ exp(a);
yy=linspace(0, 20, 50);
[xx,yy]=meshgrid(xx, yy);
fff=1-(xx.^2+yy.^2);
% ***** plot the equations ***********
figure(5);
mesh(xx,yy,fff);
xlabel("x");
ylabel("y");
zlabel("z");
title(" 3.3-) x=a + e^a,  0<=y<=50, z=1-(x^2+y^2)");
shading faceted