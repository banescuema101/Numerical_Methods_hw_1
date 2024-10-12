function [a] = get_prediction_params_iterative (K, y, lambda)
  x = zeros(length(K), 1);
  tol = 0.0001;
  r = y - K * x;
  v = r;
  maxiter = 1000;
  k = 1;
  while k <= maxiter
    if norm(r) < tol
      break;
    endif
    r_old = r;
    % am copiat diferenta dintre valorile observate si predictii
    tk = (r' * r) / (v' * K * v + lambda * v' * v);
    x = x + tk * v;
    r = r - tk * (K * v + lambda * v);
    % am actualizat r
    sk = (r' * r) / (r_old' * r_old);
    % am calculat si scalarea sk.
    v = r + sk * v;
    % am actualizat si directia, v.
    k = k + 1;
  endwhile
  a = x;
endfunction