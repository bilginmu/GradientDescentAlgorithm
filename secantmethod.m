function y = secantmethod(x)
    n = size(x);
    
    prediction =  @(x,alpha) x - alpha * gradient(x);
    alpha_func =  @(x,alpha) func(prediction(x,alpha)); % calculate alpha 
    
    error = 100;       % initial error, just for enter the loop 
    alpha_old = 0.001; % initial alpha value
    eps = 10^-6; 
    while (error > 10^-3)
        
        alpha1 = alpha_old + eps; 
        alpha2 = alpha_old - eps;
        
        % Centered difference for first derivative
        % Finite difference for second derivative
        d_alpha  = (alpha_func(x, alpha1) - alpha_func(x, alpha2)) / (2 * eps); 
        dd_alpha = (alpha_func(x, alpha1) - 2 * alpha_func(x, alpha_old) + alpha_func(x, alpha2)) / (eps)^2;
        

       
        alpha_new = alpha_old - d_alpha/dd_alpha; % update alpha
        error = abs(alpha_new - alpha_old);      
        alpha_old = alpha_new;
    end
    y = alpha_new;
end