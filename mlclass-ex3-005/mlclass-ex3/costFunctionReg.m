function [J, grad] = costFunctionReg(theta, X, y, lambda)
	
	#this function uses costFunction and is in turn used by oneVsAll
	
m = length(y);
J = 0;
grad = zeros(size(theta));
[J, grad] = costFunction(theta, X, y);
penalty = sum(theta(2:end) .^ 2);
J = J + lambda/(2*m) * penalty;
grad(2:end) = grad(2:end) + (lambda / m) * theta(2:end);
end