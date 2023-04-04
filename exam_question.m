clc; clear; close all;
format compact;

% Plot the vector field f(x,y) = (-y/2, x/2)
v1 = @(x,y) -y/2;
v2 = @(x,y) x/2;

[Xv, Yv] = meshgrid(-1:1.0:1,-1:1.0:1 );
v1v = arrayfun(v1, Xv, Yv);
v2v = arrayfun(v2, Xv, Yv);

quiver(Xv, Yv, v1v, v2v,'off');

%% First question

% Plot the vector field g(x,y) = (-2y, 2x)
v1 = @(x,y) -y/2;
v2 = @(x,y) x/2;

[Xv, Yv] = meshgrid(-1:1.0:1,-1:1.0:1 );
g1v = arrayfun(v1, Xv, Yv)*(-2) ;
g2v = arrayfun(v2, Xv, Yv) *(-2);

figure()
quiver(Xv, Yv, g1v, g2v,'off');
