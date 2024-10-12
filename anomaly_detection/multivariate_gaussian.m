function probabilities = multivariate_gaussian(X, mean_values, variances)
  n = length(X);
  probabilities = zeros(n, 1);
  for i = 1:n
    val = X(i, :);
    probabilities(i) = gaussian_distribution(val, mean_values, variances);
  endfor
endfunction
