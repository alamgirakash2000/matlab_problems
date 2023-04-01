%% Question --> 01
clc; clear; close all;
format compact;

% As we want to solve this problem using Matrix Method, we need to form a
% matrix of all the Coefficients (A) and then the constant matrix (b)
% We know Ax = b --> So x = A/b
% Sequence --> [Ax Ay Ey AB BC CD DE AD BD CE]

% Define the coefficient matrix
A =[1 0 0 0 0 0 0 1 0 0;     
    0 1 0 1 0 0 0 0 0 0;     
    0 0 0 0 1 0 0 0 0.6 0;     
    0 0 0 -1 0 0 0 0 -0.8 0;  
    0 0 0 0 -1 0 0 0 0 0.6;   
    0 0 0 0 0 -1 0 0 0 -0.8;  
    0 0 0 0 0 0 1 -1 -0.6 0; 
    0 0 0 0 0 1 0 0 0.8 0;   
    0 0 0 0 0 0 -1 0 0 -0.6;
    0 0 1 0 0 0 0 0 0 0.8
    ];

% Define the constant matrix
b = [0; 0; -74; 0; 0; 24; 0; 0; 0; 0];

% Solve the system of equations
x = A \ b;

% Display the results
fprintf('Support Reactions: \n');
fprintf('Ax = %.2f kN\n', x(1));
fprintf('Ay = %.2f kN\n', x(2));
fprintf('Ey = %.2f kN\n\n', x(3));

fprintf('Internal forces in truss members: \n');
fprintf('AB = %.2f kN\n', x(4));
fprintf('BC = %.2f kN\n', x(5));
fprintf('CD = %.2f kN\n', x(6));
fprintf('DE = %.2f kN\n', x(7));
fprintf('AD = %.2f kN\n', x(8));
fprintf('BD = %.2f kN\n', x(9));
fprintf('CE = %.2f kN\n', x(10));
