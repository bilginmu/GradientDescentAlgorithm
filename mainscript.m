clear all
clc

tic
error = 100; % initial error 
iter = 0;
    
% code is sensitive to initial values
% initial values are choosen from [-2,2] interval
% you can assign initial value that you want at any dimension
x = [-1 1 -0.5 -0.7 -2];
    
% Calculate initial x value    
while (error > 10^-2)
    alpha = secantmethod(x);     % call the secant method and find the minimum alpha
    x = x - alpha * gradient(x); % update x value 
    error  = norm(gradient(x));  
    iter = iter + 1;
end
time = toc;
fprintf('Minimum point in the function : x = [ ')
fprintf('%g ',x)
fprintf(']\n')
fprintf('Minimum value of the function at x is %f\n',func(x))
fprintf('Error : %f\n',error)
fprintf('Running time of code: %f second\n',time)