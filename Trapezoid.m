function [] = Trapezoid(fx,a,b,n)
    h = (b-a)/n;
    s = 0;
    for i=1:(n-1)
      s = s + feval(fx,a+i*h);  
    end
    X=h/2.*(feval(fx,a)+2.*s+feval(fx,b));
    fprintf('%f\n',X);
end

