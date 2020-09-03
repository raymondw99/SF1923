% Monte Carlo estimation of Espected value
output = 0 ; a = −200; b = 200; c=0; d=200;
f=@(x,y) exp(x*cos(y))*4*exp(−4*x)...
*1/sqrt(2*pi)*exp(−(y/2)ˆ2);
N=50000000;

for i = 1:N
  x = (d−c)*rand();
  y = (b−a)*rand();
  z = 420*rand();
  if (z<=f(x,y))
    output = output + 1;
  end
end

output = (b−a)*(d−c )*(420)*(output/N);
fprintf('Value : %9.8 f', output);
