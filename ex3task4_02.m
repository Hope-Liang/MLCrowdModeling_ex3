clear
N = 10000;
M = 10000;
x(N,M) = 0;
r = (2:2/(N-1):4)';
for n = 1 : N
    x(n,1) = 1/3;
    for m = 1 : M-1
        x(n,m+1) = r(n) * x(n,m) * (1-x(n,m));
    end
end
plot(r,x(:,M-1023:M),'.');