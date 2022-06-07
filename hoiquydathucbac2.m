% Hồi quy đa thức bậc 2
function [] = hoiquydathucbac2(x,f)
    N = length(x); 
    SumX1 = sum(x);
    SumX2 = sum(x.*x);
    SumX3 = sum(x.*x.*x);
    SumX4 = sum(x.*x.*x.*x);
    A = [SumX4,SumX3,SumX2;SumX3,SumX2,SumX1;SumX2,SumX1,N];
    SumF = sum(f);
    SumFx1 = sum(f.*x);
    SumFx2 = sum(f.*x.*x);
    B = [SumFx2;SumFx1;SumF];

    format rat, abc = inv(A)*B

    plot(x,f,'r*'); hold on;
    X = 0:0.1:10;
    F = @(x)abc(1)*x.^2 + abc(2)*x + abc(3);
    FX = feval(F,X);
    plot(X,FX,'b-');
end