r = 0.1;
K = 10;
a = 0.01;
b = 0.1;
m = 0.1;
q1 = 0.01;
q2 = 0.02;
p1 = 10;
p2 = 10;
c = 4;
delta = 0.01;
E = 5;

max_x = 10;
max_y = 10;
tmax = 10;
delta_t = 0.1;

N = 100;
delta_x = max_x/N;

u = zeros(N+1,N+1,1 + floor(tmax/delta_t));

k = 1;
t = delta_t;

while t < tmax
    for i = 2:N
        for j = 2:N

            xi = (i-1)*delta_x;
            yj = (j-1)*delta_x;

            dVdx  = (u(i+1,j,k) - u(i-1,j,k))/(2*delta_x);
            dVdy  = (u(i,j+1,k) - u(i,j-1,k))/(2*delta_x);
s
            u(i,j,k+1) = u(i,j,k) + delta_t * (E*(p1*xi + p2*yj - c) - dVdx*(r*xi*(1-xi/k) - a*xi*yj - q1*xi*E) - dVdy *(a*b*xi*yj - m*yj - q2*yj*E) + delta * u(i,j,k));
        end
    end

    for i = 2:N
        u(i,1,k+1) = 2*u(i,2,k+1) - u(i,3,k+1);
        u(i,N+1,k+1) = 2*u(i,N,k+1) - u(i,N-1,k+1);
    end

    for j = 2:N
        u(1,j,k+1) = 2*u(2,j,k+1) - u(3,j,k+1);
        u(N+1,j,k+1) = 2*u(N,j,k+1) - u(N-1,j,k+1);
    end

    k = k + 1;
    t = t + delta_t;
end