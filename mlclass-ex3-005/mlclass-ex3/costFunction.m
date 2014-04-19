function [J, grad] = costFunction(theta, X, y)
m = length(y);
J = 0;
grad = zeros(size(theta));
ho = sigmoid(X*theta);
J = (1/m)*sum(-y.*log(h0) - (1-y).*log(1-h0));
grad = (1/m)*(X'*(h0-y));
end
