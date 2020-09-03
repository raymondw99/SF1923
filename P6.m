% Confidence intervals for given Rayleigh distribution
syms k
M = 1 e4 ;
b = 1 ;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on

lower_bound = 1−sqrt((4−pi)/(pi)*(sum(x)/M)*sqrt(2/pi);
upper_bound = 1+sqrt((4−pi)/(pi)*(sum(x)/M)*sqrt(2/pi);
hold off

plot(lower_bound, 0 , 'g∗')
plot(upper_bound, 0 , 'g∗')
