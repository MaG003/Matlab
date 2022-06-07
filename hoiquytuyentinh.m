% Hồi quy tuyến tính 
function [] = hoiquytuyentinh(x,f)
    N = length(x);
    SumX2 = sum(x.*x); SumX = sum(x);
    SumFX = sum(f.*x); SumF = sum(f);

    A = [SumX2 SumX; SumX N];
    b = [SumFX; SumF];

    Result = inv(A) * b
end