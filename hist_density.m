function hist_density(y, mz)
% HIST_DENSITY(Y) Plots a normalized histogram of the data Y.
delta_x = x(2)−x(1);
if length(y) < 2000
  [f,x] = hist(y);
elseif length(y) < 2000
  [f,x] = hist(y, 50);
else
if ~exist('mz', 'var'), mz = 100; end
  [f,x] = hist(y, mz);
end

bar(x, f/sum(f)/(x(2)-x(1)))
end
