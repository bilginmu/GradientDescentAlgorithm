% Take the gradient of the function numerically at a given point
function y = gradient(x) 
   
    h = 0.0000001;
    n = size(x);
    dfdx = [];
    
    for i=1:1:(n(2))
        local = x; 
        local(i) = local(i) + h; 
        dfdx(i) = (func(local) - func(x))/h;
    end   
     

    y = dfdx;
end
