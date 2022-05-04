% Thuật toán day cung
function [] = matlab5(fx,a,c,epsiolon)
    saiso = 1000000;
    step = 0;
    while saiso > epsiolon
        step = step + 1;
        fa = feval(fx,a);
        fc = feval(fx,c);
        b = (a*fc - c*fa)/(fc - fa);
        fb = feval(fx,b);
        fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',step,a,b,c,fa,fb,fc);
        if(fa*fb <= 0)
            c = b;
        else
            a = b;
        end
        saiso = abs(fb);
    end
end
