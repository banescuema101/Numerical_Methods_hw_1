function pred = eval_value(x, X, f, f_param, a)
  pred = 0;
  m = length(X);
  for i = 1:m
    pred = pred + a(i) * f(X(i, :), x, f_param);
  endfor
endfunction