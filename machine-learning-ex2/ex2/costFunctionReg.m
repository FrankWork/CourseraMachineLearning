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

% size(X) 118    28
% size(theta) 28     1
% pause;

h = sigmoid(X * theta);

% You should not regularize theta(1).
theta_without_1 = theta;
theta_without_1(1) = 0;
J = 1 / m * (-y' * log(h) - (1-y)' * log(1-h)) + lambda/(2*m) * theta_without_1' * theta_without_1;

A = eye(size(theta, 1));
A(1) = 0;
grad = 1 / m * X' * (h - y) + lambda/m * A * theta;






% =============================================================

end
