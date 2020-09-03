% ML and MK estimations of espected value of given Rayleigh distribution
syms k
M = 1e5;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40) % Located in a separate file
hold on

myestml = sqrt(dot(x,x)/(2*M));
myestmk = (sum(x)/M)*sqrt(2/pi);
plot(myestml, 0, 'r*')
plot(myestmk, 0, 'g∗')
plot(b,0,’ro’)
hold on

plot(0:0.1:18, raylpdf(0:0.1:18, myestml),'r')
hold off
