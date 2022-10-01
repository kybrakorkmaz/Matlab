
%@author Kubra Korkmaz - ID 20220641
%@date 09.24.2022
% Script Porgramming Lab - Task 3

%% functions of graphs are bottom of the code file

%************* Question 1 -Creating 2D graphs *************

%********** 1.a ********
%create a linear space vector
D1=-pi; 
D2=pi;  
x=linspace(D1, D2, 50);
% Make a vector by passing a vector through a function
y=s(x);
%%Plotting Data
%Plot these two vectors against each other
figure(1);
plot(x, y);
grid minor;
axis([-pi pi -1 1]);
xlabel("x");
ylabel("y");
legend('f1=sin(x)', 'Location','best');
title("First Question graph - a");

%********* 1.b *************
% Make a vector by passing a vector through a function
y2=f(x);
y3=ff(x);
%%Plotting Data
%Plot these two vectors against each other
figure(2);
hold on;
grid minor;
plot(x, y2, 'o--', color='g');
plot(x, y3, '*-', color='b');
axis ([-pi pi -20 20]);
hold off;
title(" First Question Graph-b");
legend("f2=x^2+9", " f3=x^3-2*x^2-9", 'Location','best');

%******** Question - 2 preparation of specialized plots *******
%******** 2.a *************
 %grades of 4 class of each students
stu1=[6 8 3 10];
stu2=[1 7 8 6];
stu3=[4 5 2 10];
stu4=[8 9 8 7];
stu5=[7 10 8 9];
stu6=[6 2 7 5];
%create 6x4 matrix for grades of each students, (row, column), (stud... , grades)
m=[stu1; stu2; stu3; stu4; stu5; stu6];
X=[1 2 3 4];
% create bar graph and its features
figure(3)
tiledlayout(2,1)
nexttile
bar(X,m);
title("Second Question Graph");
xlabel("classes");
ylabel("grades 1-10");
legend('V. A.', 'G. A.', 'D. N.', 'A. T.', 'E. S.', 'J. S.', 'Location','eastoutside');

%******** 2.b ****************
% get sum of students'grades one by one
% and find their averages

sum1=sum(stu1);         % first student
mean1=sum1/length(stu1);

sum2=sum(stu2);         % second student
mean2=sum2/length(stu2);

sum3=sum(stu3);         % third student
mean3=sum3/length(stu3);

sum4=sum(stu4);         % fourth student
mean4=sum4/length(stu4);

sum5=sum(stu5);         % fifth student
mean5=sum5/length(stu5);

sum6=sum(stu6);         % sixth student
mean6=sum6/length(stu6);

% creat a vector for theirs mean
M=[mean1 mean2 mean3 mean4 mean5 mean6];  
% create vector for total student number
X=[1 2 3 4 5 6];
% tile stem graph to bar graph
nexttile;
stem(X, M);
% graph features
axis padded;
ylim([1 10]);
xlabel('students');
ylabel("grades");

%*********** Question 3 ****************
%%create a vector 
x3=linspace(0, pi, 20);
% variables and theirs reasult of functions
y4=f_4(x3);
y5=f_5(x3);
y6=f_6(x3);

% first element of vector
first_x=x3(1,1);
% first value of first element in first function
first_val=f_4(first_x);

% plotting the 3 function in one figure
figure(4);

tiledlayout(3,1);
% first plotted function
nexttile;
plot(x3,y4, 'r<-');
title('f = xsin(x)', 'FontWeight','bold','FontSize',16);
xlabel('x');
ylabel('y');
% second plotted function
nexttile;
plot(x3, y5, 'bo--');
title('f=x^2+2x+1',['1st value of f=xsin(x) is ', num2str(first_val)]);
xlabel('x');
ylabel('y');
%third plotted function
nexttile;
plot(x3, y6, 'gs--');
title('Last Graph', 'f(x)=x+4');
xlabel('x');
ylabel('y');

%%% *************  Functions ******************
%% Functions for first and second questions
%Function f1
function f1 = s(val)
    f1=sin(val);
end
%Function f2
function f2 = f(val2)
    f2 = (val2.^2) + 9;
end
%Function f3
function f3 = ff(val3)
    f3 = val3.^3 -2*(val3.^2) - 9;
end

%% Functions for third -last- question
% Function f4
function f4 = f_4(val4)
    f4=val4.*sin(val4);
end
% Function f5
function f5= f_5(val5)
    f5=(val5.^2)+(2.*val5)+1;
end
% Function f6
function f6=f_6(val6)
    f6=val6+4;
end

