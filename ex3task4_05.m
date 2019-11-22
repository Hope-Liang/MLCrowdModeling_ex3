sigma = 10;
beta = 8/3;
rho1 = 28;
rho2 = 19.661399;
f = @(t,a) [-sigma*a(1) + sigma*a(2); rho1*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
g = @(t,b) [-sigma*b(1) + sigma*b(2); rho2*b(1) - b(2) - b(1)*b(3); -beta*b(3) + b(1)*b(2)];
[t,a] = ode45(f,[0 1000],[10 10 10]);% Runge-Kutta 4th/5th order ODE solver
[p,b] = ode45(g,[0 1000],[10 10 10]);

%figure(1);
plot3(a(:,1),(a(:,2)),(a(:,3)));
hold on;
%figure(2);
plot3(b(:,1),(b(:,2)),(b(:,3)));