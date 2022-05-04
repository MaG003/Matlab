f = @(y,t)-20*y + 7*exp(-0.5*t);
y0 = 5;
t0 = 0;
t1 = 1;
h = 0.01;
% Chinh xac
y_chinhxac = @(t)5*exp(-20*t) + (7/19.5)*(exp(-0.5*t)-exp(-20*t));
X = t0:h:t1;
Y_cx = feval(y_chinhxac,X);
plot(X,Y_cx); hold on;

for t = t0:h:t1
    k1 = h*feval(f,y0,t);
    k2 = h*feval(f,y0+k1/2,t+h/2);
    k3 = h*feval(f,y0+k2,t+h);
    Y = y0 + (1/6)*(k1 + 4*k2 + k3);
    plot(t,Y,'r*--');
    y0 = Y;
end