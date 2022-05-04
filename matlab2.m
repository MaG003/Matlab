% Nhap m tu ban phim tinh tong cac so chia het cho m trong khoang [0,10]
function [] = matlab2(m)
    sum = 0;
    for i = [0:10];
        if(mod(i,m)==0)
            sum = sum + i;
        end
    end

    fprintf('sum = %d\n',sum);
end