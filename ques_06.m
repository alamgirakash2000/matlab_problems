clc; clear; close all;

% Define the range of x values
x = -5:0.01:5;

% Calculate y values for Equation 1
y1 = sqrt(42 - x.^2);

% Calculate y values for Equation 2
y2 = (2*y1.^2 - 6)./ (3 - x.^4);

% Plot the two curves
plot(x, y1, 'b-', x, y2, 'r--');
xlabel('x');
ylabel('y');
legend('Equation 1', 'Equation 2');

% Find the intersection points using fzero
x_intercept = zeros(2, 1);
y_intercept = zeros(2, 1);
count = 0;
for i = 1:length(x)-1
    f = @(y) x(i)^2 + y^2 - 42 - (x(i)^4 + 3*y - 2*y^2 - 6);
    if sign(f(y1(i))) ~= sign(f(y1(i+1)))
        [y_intercept_candidate, ~, exitflag] = fzero(f, [y1(i), y1(i+1)]);
        if exitflag > 0 && isreal(y_intercept_candidate)
            count = count + 1;
            x_intercept(count) = x(i);
            y_intercept(count) = y_intercept_candidate;
        end
    end
end

% Print the intersection points
fprintf('The intersection points are:\n');
disp([x_intercept, y_intercept]);
