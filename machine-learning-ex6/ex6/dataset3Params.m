function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%


% compute the optimal C and sigma using folloing code
%
% params = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%
% lowest_error = 1.0;
% best_C = C;
% best_sigma = sigma;
%
% for idx_C = 1:length(params)
%     C = params(idx_C);
%     for idx_sigma = 1:length(params)
%         sigma = params(idx_sigma);
%
%         model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%         predictions = svmPredict(model, Xval);
%         error = mean(double(predictions ~= yval));% 0 <= error <= 1
%
%         if error < lowest_error
%             lowest_error = error;
%             best_C = C;
%             best_sigma = sigma;
%         end
%
%     end
% end
%
% C=best_C;
% sigma=best_sigma;
%
% fprintf(['dataset 3 params: C = %0.5f, sigma = %0.5f\n'], C, sigma);

C = 1.00000; 
sigma = 0.10000;

% =========================================================================

end
