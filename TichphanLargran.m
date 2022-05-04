fx = @(x)x^2 + sin(x) + 1;
X = pi/3;
chinhxac = fx(X);
Ax = 0:pi/4:pi/2;
r = 0;
for i=0:2
    tg = 1;
    for j=0:2
        if i~=j
            tg = tg*(X-Ax(j+1))/(Ax(i+1)-Ax(j+1));
        end
    end
    tg = tg*fx(Ax(i+1));
    r = r + tg;
end
fprintf ('fx(pi/3) = %f\n',chinhxac);
fprintf ('pm(pi/3) = %f\n',r);


