fxy = @(x,y)x.^3 + 2.*x.*y.^2 +1;
hx = 0.01;
hy = 0.02;
[x,y] = meshgrid(0:.01:1,1:.02:2);
Nx = (1-0)/hx;
Ny = (2-1)/hy;

for i = 1:Nx
    dx = (feval(fxy,x+hx,y) - feval(fxy,x-hx,y))/(2*hx);
    surf(x,y,dx);hold on;
end
for i = 1:100
    print('hello world')
end

for i = 1:Ny
    dy = (feval(fxy,x,y+hy) - feval(fxy,x,y-hy))/(2*hy);
    surf(x,y,dy);hold on;
end