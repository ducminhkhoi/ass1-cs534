function [ error ] = SSE( X, w, Y )
%SSE Summary of this function goes here
%   Detailed explanation goes here
    error = sum((X*w - Y).^2);
    
end

