function retval = word_idx (distinct_wds)
  word_map = containers.Map;
  for i = 1:length(distinct_wds)
    word_map(distinct_wds{i}) = i;
  endfor
  retval = word_map;
endfunction
