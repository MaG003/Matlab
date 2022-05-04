fx = @(x)sin(x);
h = 0.05;
N = (pi - pi/2)/h;
A = pi/2:h:pi;
Chinh_xac = cos(A);
plot(A,Chinh_xac);hold on;
for i = 1:N
    X = pi/2+i*h;
    SPT(i) = (feval(fx,X+h) - feval(fx,X))/h;
    SPN(i) = (feval(fx,X) - feval(fx,X-h))/h;
    SPTT(i) = (feval(fx,X+h) - feval(fx,X-h))/(2*h);
    plot(X,SPT(i),'r*');hold on;
    plot(X,SPN(i),'mo');hold on;
    plot(X,SPTT(i),'r+');hold on;
end
