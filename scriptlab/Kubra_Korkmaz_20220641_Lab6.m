%@author Kubra Korkmaz ID-20220641
%@date 19.10.2022
% Script Programming Lab- 6

%********************* Question 1 *****************************************

%%
%prompt input from user
fahren=input("Enter the temprature as fahrenheit: ");

%invoke the fahrentoCels function
celcius=fahrentoCels(fahren);

%print the result of the function
fprintf("result is %f\n", celcius);


%%
%******************** Question 2 ******************************************
global x;
global result;
my_function();
figure(1);
plot(x, result, 'rs:');
xlabel("x");
ylabel("y");
title("y=sin(x)+cos(x)");

%**************************************************************************

