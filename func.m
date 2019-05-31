% algorthm function can be everything
function y = func(x)
    y = 0;
    n = size(x);
    for i=1:1:(n(2)-1)
        y = y + 100 * (x(i+1) - x(i)^2)^2 + (1 - x(i))^2;        
    end
end

