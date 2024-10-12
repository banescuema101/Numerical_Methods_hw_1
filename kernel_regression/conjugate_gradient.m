function x = conjugate_gradient(A, b, x0, tol, max_iter)
  r = b - A * x0;
  v = r;
  x = x0;
  tolsquared = tol^2;
  k = 1;
  while k <= max_iter && r' * r > tolsquared
    tk = (r' * r) / (v' * A * v);
    x = x + tk * v;
    r = r - tk * A * v;
    sk = (r' * r) / (v' * A * v);
    v = r + sk * v;
    k = k + 1;
  endwhile
end