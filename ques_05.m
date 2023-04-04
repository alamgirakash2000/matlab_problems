%% Question --> 05
clc; clear; close all;
format compact;

% Empirical constants for oxygen gas
a = 25.48;
b = 1.52e-3;
c = -0.7155e-5;
d = 1.312e-9;

% Temperature range
T1 = 400; % K
T2 = 1100; % K
dT = 100; % K intervals

% Calculation of change in enthalpy and heat capacity
T = T1:dT:T2;
Cp = a + b*T + c*T.^2 + d*T.^3;
delta_H = cumtrapz(T, Cp);

% Creating a table of changes in enthalpy
Table = table(T', delta_H');
Table.Properties.VariableNames = {'Temperature (K)', 'Change in Enthalpy (J/mol)'};

% Displaying the table
disp(Table)

% Plotting the change in heat capacity with respect to temperature
plot(T, Cp)
xlabel('Temperature (K)'), ylabel('Heat Capacity (J/mol-K)');
title('Change in Heat Capacity of Oxygen Gas')
grid on
