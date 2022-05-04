function[] = DayInMonth(x)

switch x
    case [1,3,5,7,8,10,12]
        fprintf('31 days\n');
    case 2
        fprintf('28 days\n');
    otherwise
        fprintf('30 days\n');
end