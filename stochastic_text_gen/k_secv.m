function B = k_secv(A, k)
  B = cell(length(A) - k, 1);
  for i = 1:length(A) - k
    secv = A(i:i+k-1);
    B{i} = strjoin(secv);
  endfor
endfunction