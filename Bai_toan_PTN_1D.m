% Tham số
M = 20;
D = 0.01;
dx = 0.05;
dt = 0.01;
Time = 1;

%Khởi tạo điều kiện ban đầu
for i = 1:M
    T(i) = 25;
end

Ntime = Time/dt;
for time = 1:Ntime
    for i = 1:M
        if i == 1
            DHB2(i) = D*(100 - 2*T(i) + T(i + 1))/(dx*dx);
        elseif i == M
            DHB2(i) = D*(T(i - 1) - 2*T(i) + 25)/(dx*dx);
        else
            DHB2(i) = D*(T(i - 1) - 2*T(i) + T(i + 1))/(dx*dx);
        end
    end

    for i = 1:M
        T(i) = T(i) + dt*DHB2(i);
    end
    X = 1:M;
    plot(X,T);
    pause(0.01);
end