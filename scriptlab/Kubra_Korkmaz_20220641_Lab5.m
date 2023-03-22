%@author Kubra Korkmaz
%@date 12.10.2022
% Script Programming Lab - 5

%******** Question 1 *****************

x=linspace(0, 15);
y=sin(2.*pi.*x);
s=struct('field1', y, 'field2', x, 'field3', 'y=sin(2pix)');
figure(1);
plot(s.field2, s.field1);
title(s.field3);


%********** Question 2 ********************

while 1
    a=input("Enter a value for 'a' ");
    b=input("Enter a value for 'b' ");
    c=input("Enter a value for 'c' ");
    x_=input("Enter a value for 'x' ");
    if (a==0 && b==0 && c==1 && x_==1)
        break
    end
    f=a.*x_.^2 + b.*x_ + c;
    disp(f);
end

%************ Question 3 ***************
%create 2 random variables write them in array, if there are 2 same
%numbers, end the loop,  and plot them
%% 
v=[] %array for rand5
k=[] %array for rand7
s=[] %array for x axis
i=0  %index for x axis array
while 1
    first=round(rand*5) %first number
    sec=round(rand*7)    %second number 
    %insert the elements
    v(end+1,1)=first
    k(end+1,1)=sec
    s(end+1, 1)=i
    i=i+1
      if(first == sec)     %if second and first numebr equel each other, break the loop
        break
    end
end

figure(2)
plot(s,v)
hold on
plot(s, k)
hold off
legend('rand5', 'rand7')
xlabel('iterations')
ylabel('values')
