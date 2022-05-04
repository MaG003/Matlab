N = input('N = ');
while N ~ 0
    for i = 1:N
        if mod(N,i) == 0;
            i
        end
    end
    N = input('N = ');
end `