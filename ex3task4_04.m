sigma = 10;
beta = 8/3;
rho = 28;
f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
[t,a] = ode45(f,[0 100],[10 10 10]);% Runge-Kutta 4th/5th order ODE solver
[p,b] = ode45(f,[0 100],[10.00000001 10 10]);

for n=1:1130
    if (a(n,1)-b(n,1))^2+(a(n,2)-b(n,2))^2+(a(n,3)-b(n,3))^2>1
        N=n;
        disp(N)
    end
end
    
    
    
%plot3(a(:,1),a(:,2),a(:,3))