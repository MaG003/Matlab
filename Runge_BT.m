f = @(y,x)-y + x + 1;
y0 = 1;
x0 = 0;
x1 = 1;
h = 0.01;

% Chinh xac
y_chinhxac = @(x)x + exp(-x);
X = x0:h:x1;
Y_cx = feval(y_chinhxac,X);
plot(X,Y_cx); hold on;

% Runge_Kutta_bac2
for x = x0:h:x1
    k1 = h*feval(f,y0,x);
    k2 = h*feval(f,y0+k1,x+h);
    Y = y0 + (1/2)*(k1 + k2);
    plot(x,Y,'r*--');
    y0 = Y;
end

% Runge_Kutta_bac3
y0 = 1;
for x = x0:h:x1
    k1 = h*feval(f,y0,x);
    k2 = h*feval(f,y0+k1/2,x+h/2);
    k3 = h*feval(f,y0+k2,x+h);
    Y = y0 + (1/6)*(k1 + 4*k2 + k3);
    plot(x,Y,'b.--');
    y0 = Y;
end

% Runge_Kutta_bac4
y0 = 1;
for x = x0:h:x1
    k1 = h*feval(f,y0,x);
    k2 = h*feval(f,y0+k1/3,x+h/3);
    k3 = h*feval(f,y0+k1/3+k2/3,x+2*h/3);
    k4 = h*feval(f,y0+k1-k2+k3,x+h);
    Y = y0 + (1/8)*(k1 + 3*k2 + 3*k3 + k4);
    plot(x,Y,'yo--');
    y0 = Y;
end