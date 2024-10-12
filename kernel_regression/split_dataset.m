function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  n = length(X);
  nr = round(percentage * n);
  X_train = X(1:nr, :);
  y_train = y(1:nr);
  X_pred = X(nr + 1:end, :);
  y_pred = y(nr + 1:end);
endfunction
