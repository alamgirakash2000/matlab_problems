clc; clear; close all;

%% Part (a)
x = linspace(-5, 5, 10000);
y1 = sqrt(42 - x.^2);   % Equation 01

% By rearranging equation 2 --> y = (2*y^2 - 6)/3 - x^4/3
f = @(x) (2/3)*sqrt(3 + x.^4);

% Plotting the two equations
fplot(f, [-5, 5])
hold on
plot(x, y1), ylim([-1,10])
xlabel('x'), ylabel('y'), title('Plots: y vs x')
legend('y = sqrt(42 -x^2)', 'y = (2*y^2 - 6)/3 + x^4/3')

fprintf("\n\n Result for part (a): \n");
for i = 1:length(x)-1
    ym = x(i)^4 + 3*y1(i) - 2* y1(i)^2 - 6;
    
    if (ym>-0.05 && ym<0.05)
        fprintf("x: %.2f, y: %.2f \n ", x(i), y1(i));
    end
end

%% Part (b)
fprintf("\n\n Result for part (b): \n");

syms x y
f = x^2 + y^2-42;
disp("differentiation of eqn (i) with respect to x:");
disp(diff(f, x));
disp("Integration of eqn (i) with respect to x:");
disp(int(f, x));

syms x y
f = x^2 + y^2-42;
disp("differentiation of eqn (i) with respect to y:");
disp(diff(f, y));
disp("Integration of eqn (i) with respect to y:");
disp(int(f, y));

syms x y
f = x^4 + 3*y-2*y^2-6;
disp("differentiation of eqn (ii) with respect to x:");
disp(diff(f, x));
disp("Integration of eqn (ii) with respect to x:");
disp(int(f, x));

syms x y
f = x^4 + 3*y-2*y^2-6;
disp("differentiation of eqn (ii) with respect to y:");
disp(diff(f, y));
disp("Integration of eqn (ii) with respect to x:");
disp(int(f, y));


