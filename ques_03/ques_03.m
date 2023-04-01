clc; clear; close all;

syms t;
h = -0.12*t^4 + 12*t^3 - 380*t^2 + 4100*t + 220;
v = diff(h);
a = diff(v);

t = 0:0.1:48;
h = eval(subs(h,t));
v = eval(subs(v,t));
a = eval(subs(a,t));

plot(t,h,'LineWidth',2);
hold on;
plot(t,v,'LineWidth',2);
plot(t,a,'LineWidth',2);
grid on;
xlabel('Time (hours)');
ylabel('Height/Velocity/Acceleration (m/m/h)');
title('Altitude, Velocity, and Acceleration vs. Time');
legend('Height','Velocity','Acceleration');

b = sqrt(1+x^2);
y = 0.4/b - b*(1 - 0.4/b^2 )+x;
