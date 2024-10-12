function [K] = build_kernel (X, f, f_param)
  m = length(X);
  K = zeros(m, m);
  for i = 1:m
    for j = 1:m
        K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor
endfunction
