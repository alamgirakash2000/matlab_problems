%% Question --> 02
clear; clc ; close all;
format compact;

% Defining variables
z0 = 100;
v0 = 60;
m =2;
c = 15;
t = 0.1:0.001:15;
g = 9.8;

% Writing the equation
z = z0 + (m/c)*(v0+m*g/c)*(1-exp(-(c/m).*t)) - m*g./t;

% Plotting the values
plot(t, z);
xlabel('Time (s)');
ylabel('Height (m)');
title('Height vs Time');

% Printing the pick value
fprintf('The peak value of z is %.2f meters when the time is %.2f seconds.\n', max(z), t(z == max(z)));
