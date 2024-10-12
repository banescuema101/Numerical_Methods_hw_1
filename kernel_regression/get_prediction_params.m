function [a] = get_prediction_params (K, y, lambda)
  m = size(K, 1);
  I = eye(m);
  a = (lambda * I + K) \ y;
endfunction
