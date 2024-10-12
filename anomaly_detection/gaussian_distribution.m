function probability = gaussian_distribution(X, mean_value, variance)
  n = length(X);
  probability = (1 / sqrt((2*pi)^n * det(variance))) * exp(-0.5 * (X - mean_value) * inv(variance) * (X - mean_value)');
endfunction