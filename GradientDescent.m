function [w, iters] = GradientDescent( w, X, Y, lambda, alpha, epsilon)
%GRADIENTDESCENT Summary of this function goes here
%   Detailed explanation goes here
    w_temp = w;
    
    max_iter = 1000;
    iters = 0;
     
    d = 100;
    %for iters = 1: max_iter,
    while (d > epsilon),
        delta = 0;
        for i = 1:size(X,1),
            x_i = X(i,:);
            y_i = Y(i);
            delta = delta + 2 * (x_i*w_temp - y_i).*x_i;
        end
        delta = delta + 2* lambda*w_temp';
        w_temp = w_temp - alpha.*delta';
        
        d = sum(abs(delta))/size(X,1);
        iters = iters + 1;
    end
    
    w = w_temp;
 % w = (lambda.*eye(size(X,2)) + X' * X)\(X'*Y);
    
end

