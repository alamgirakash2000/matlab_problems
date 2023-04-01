clc; clear; close all;

% Forming Equation
syms x
b = sqrt(1+x^2);
y = 0.4/b - b*(1 - 0.4/b^2 )+x;

% Calculating Values
x = 0:0.001:1.5;
H = eval(subs(y,x));

% Plotting Result
plot(x,H,'LineWidth',2), xlabel("x"), ylabel("F(x)");
title("F(x) vs x")
grid on
fprintf("The Maximum Values of F(x) is: %.2f \n" ,max(H));