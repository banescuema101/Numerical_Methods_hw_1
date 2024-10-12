function retval = k_secv_idx(distinct_k_sec)
  [unique_k_sec, idx] = unique(distinct_k_sec);
  retval = containers.Map(unique_k_sec, idx);
endfunction