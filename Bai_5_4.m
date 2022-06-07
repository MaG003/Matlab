function [] = Bai_5_4()
    x = [-2, 0, 4];
    f = [0, 3, 4];
    N = length(x);
    SumX1 = sum(exp(x));
    SumX2 = sum(exp(2*x));
    SumFX = sum(f.*exp(x));
    SumF = sum(f);
    A = [SumX2, SumX1; SumX1 N];
    B = [SumFX ; SumF];

    format rat, ab = inv(A)*B

    plot(x,f,'r*'); hold on;
    X = 0:0.1:10;
    F = @(x)ab(1)*exp(x) + ab(2);
    FX = feval(F,X);
    plot(X,FX,'b-');
end