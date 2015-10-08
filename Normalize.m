function [ X, Y ] = Normalize( X, Y )
%NORMALIZE Summary of this function goes here
%   Detailed explanation goes here
for i = 1:size(X,2),
    X(:,i) = X(:,i) / norm(X(:,i), 2); 
end
Y = Y / norm(Y, 2);

end

