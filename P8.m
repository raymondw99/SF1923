load poly.mat
% Polynomial regression
scatter(xi, yi)

% Alter depending on polynomial degree
X = [ones(size(xi)) xi xi.ˆ 2 ... xi. ˆ(i −1)] ;
beta_hat = regress(yi , X);
hold on

u = beta_hat(1) + beta_hat(2)*xi...
+ beta_hat(i)*xi.ˆ(i+1) % i = polynomial degree

plot(xi, u, 'b ', 'LineWidth' , 2);
