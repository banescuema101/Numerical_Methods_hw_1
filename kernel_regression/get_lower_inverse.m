function [P] = get_lower_inverse (L)
  [m, n] = size(L);
  P = eye(n);
  % Am aplicat eliminarea gaussiană pentru a obține inversa
  for j = 1:n
    for i = j+1:n
      arg = L(i, j) / L(j, j);
      P(i, :) = P(i, :) - arg * P(j, :);
      L(i, :) = L(i, :) - arg * L(j, :);
    endfor
  endfor
  % Am normalizat
  for i = 1:n
    P(i, :) = P(i, :) / L(i, i);
  endfor
endfunction
