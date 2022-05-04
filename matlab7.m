% Thuật toán cát tuyến
function [] = matlab7(fx,x0,x1,eps)
    saiso = 1;
    step = 0;
    while saiso > eps
        step = step + 1;
        fx0 = feval(fx,x0);
        fx1 = feval(fx,x1);
        dfx1 = (fx1 - fx0) / (x1 - x0);
        x2 = x1 - fxl/dfx1;
        % chưa xong 
    end
    nghiem = x
    saiso = saiso
    sobuoclap = step
end