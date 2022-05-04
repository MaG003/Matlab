function [] = CheckPrime(N)
    check = 1;
    for i = 2:sqrt(N)
        if mod(N,i) == 0
            check = 0;
            break;
        end
    end
    
    if check == 1
        fprintf('%d la so nguyen to.\n',N);
    else
        fprintf('%d khong la so nguyen to.\n',N);
    end

end