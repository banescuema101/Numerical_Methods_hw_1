function [mean_values variances] = estimate_gaussian(X)
  [m, n] = size(X);
  mean_values = zeros(1, n);
  variances = zeros(n, n);

  % Am calculat media.
  for i = 1:n
    mean_values(i) = mean(X(:, i));
  endfor

  % Am calculat matricea de varianță
  for i = 1:n
    for j = 1:n
      variances(i, j) = 1/m * sum((X(:, i) - mean_values(i)) .* (X(:, j) - mean_values(j)));
    endfor
  endfor
endfunction