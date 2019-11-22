sigma = 10;
beta = 8/3;
rho = 0.5;
f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
[t,a] = ode45(f,[0 100],[10 10 10]);% Runge-Kutta 4th/5th order ODE solver
[p,b] = ode45(f,[0 100],[10.00000001 10 10]);

figure(1);
plot3(a(:,1),(a(:,2)),(a(:,3)),'x', 'Color', [255, 153, 51] / 255);
hold on;
figure(2);
plot3(b(:,1),(b(:,2)),(b(:,3)),'x', 'Color', [51, 153, 255] / 255);