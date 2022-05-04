% Phương pháp sai phân tính 1 hàm số bất kỳ
fx = @(x)sin(x);
A = pi/3;
Chinh_xac = cos(A)
for i = 0:6
    h = 1/10^i;
    Gan_dung = (feval(fx,A+h) - feval(fx,A-h))/2*h;
    fprintf('%f\t%f\n',h,Gan_dung);
end