% Thuật toán chia 2
function [] = matlab4(fx,a,c,epsiolon)
    saiso = 1000000;
    step = 0;
    while saiso > epsiolon
        step = step + 1;
        b = (a + c) / 2;
        fa = feval(fx,a);
        fb = feval(fx,b);
        fc = feval(fx,c);
        fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',step,a,b,c,fa,fb,fc);
        if(fa*fb <= 0)
            c = b;
        else
            a = b;
        end
        saiso = abs(fb);
    end
end
