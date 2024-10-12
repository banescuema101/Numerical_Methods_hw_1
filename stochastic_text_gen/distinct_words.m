function retval = distinct_words (tokens)
  unique_tokens = unique(tokens);
  retval = sort(unique_tokens);
endfunction
