% Phương pháp Bairstow
function [] = Bairstow(fx,p,q,eps)
    saiso = 1;
    step = 0;
    while saiso > eps
        step = step + 1;
        x = feval(qx,x0);
        saiso = abs(x-x0);
        x0 = x;
    end
    nghiem = x
    so_buoc_lap = step
end