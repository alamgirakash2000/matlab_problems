clear; close all; clc;
format compact;

% Define the given parameters
L = 10;     % Length of the beam (m)
W = 200;    % Load intensity (N/m)
T = 1100;   % Tension (N)
EI = 12450; % Moment of inertia (N.m^2)

% Calculate the value of a
a = sqrt(T/EI);

% Define the range of x values
x = linspace(0, L);

% Calculate the corresponding y values using the given formula
y = (W*EI/T^2) * ((cosh(a*(L/2-x))) / (cosh(a*L/2))) + (W*x.*(L-x)/(2*T));

% Plot the graph of y against x
plot(x, y),xlabel('x (m)'), ylabel('y (m)'),grid on;
axis([0 10 2 3.5]);
title('Deflection of a beam under uniform load');
