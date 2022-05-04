x = input('Name: ');
y = input('Diem: ');
diem = y;

if diem < 4
    loai = 'truot';
else
    loai = 'qua';
end

fprintf('Ban %s da %s',x,loai);