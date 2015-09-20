function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h=X*theta; % h is a m*1 vector that stores the each h(xi)
sum=0;  %sum of the sigma part before dividing 2m
for i=1:m
    temp=0;
    temp=h(i)-y(i);
    temp=temp*temp;
    sum=sum+temp;
end

sum=sum/m;

J=sum/2;

% =========================================================================

end
