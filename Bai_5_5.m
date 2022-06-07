function [] = Bai_5_5()
    x = [-2,3,5,8,9];
    f = [6.3, 1.2, 7.1, -2.8, -0.05];
    N = length(x);
    SumX1 = sum(cos(x));
    SumX2 = sum(sin(x).*cos(x));
    SumX3 = sum(sin(x));
    SumFX = sum(f.*cos(x));
    SumF = sum(f);
    A = [SumX1 SumX2; N SumX3];
    B = [SumFX; SumF];

    format rat, ab = inv(A)*B

    plot(x,f,'r*'); hold on;
    X = 0:0.1:10;
    F = @(x)ab(1) + ab(2)*sin(x);
    FX = feval(F,X);
    plot(X,FX,'b-');
end