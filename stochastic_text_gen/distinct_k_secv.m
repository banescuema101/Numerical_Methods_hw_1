function unique_cell_array = distinct_k_secv (cell_array)
  unique_k_secv = unique(cell_array);
  unique_cell_array = sort(unique_k_secv);
endfunction
