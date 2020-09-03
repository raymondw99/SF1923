load moore.mat
% Linear regression 
w = log(y);
X = [ones(size(xtime)) xtime];
beta = regress(w, X);
Y_2020 = exp(beta(1) + beta(2)*2020);

scatter(xtime, w);
hold on
u = beta(1) + beta(2)*xtime;
plot(xtime, u);
