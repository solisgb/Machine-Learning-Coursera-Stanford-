function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);

%J0 = -1. / m * ( ( y(1) * log(h(1)) ) + ( (1-y(1)) * log(1 - h(1)) ) );
%Jj =  -1. / m * ( ( y(2:m)' * log(h(2:m)) ) + ( (1-y(2:m))' * log(1 - h(2:m)) ) );
Jj =  -1. / m * ( ( y' * log(h) ) + ( (1-y)' * log(1 - h) ) );
n = size(theta)(1);
reg_term =  lambda * sum(theta(2:n).^2) / (2.*m) ;
J = Jj + reg_term;

rf = lambda / m;
theta(1) = 0;
grad =((h - y)' * X / m)' + (rf * theta) ;

% =============================================================

end
