function [] = Bai_5_6()
    x = [-3,2, 0,-2,6];
    y = [-2,-2,1,3,5];
    f = [45,30,6,55,230];
    N = length(x);
    SumX1 = sum(x.*x.*x.*x);
    SumX2 = sum(x.*x.*y.*y);
    SumX3 = sum(y.*y.*y.*y);
    SumFX1 = sum(f.*x.*x);
    SumFX2 = sum(f.*y.*y);
    A = [SumX1 SumX2; SumX2 SumX3];
    B = [SumFX1 ; SumFX2];
    Result = inv(A)*B
end