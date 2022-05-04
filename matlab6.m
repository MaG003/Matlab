% Thuật toán newton
function [] = matlab6(fx,dfx,x0,eps)
    saiso = 1;
    step = 0;
    while saiso > eps
        step = step + 1;
        fx0 = feval(fx,x0);
        dfx0 = feval(dfx,x0);
        x = x0 - fx0/dfx0;
        saiso = abs(feval(fx,x));
        x0 = x;
    end
    nghiem = x
    saiso = saiso
    sobuoclap = step
end
