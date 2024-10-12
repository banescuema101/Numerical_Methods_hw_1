function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
  nr_words = length(words_set);
  nr_k_secv = length(k_secv_set);

  retval = sparse(nr_k_secv, nr_words);
  % am creat o matrice rara, cu ajutorul functiei sparse.
  word_map = struct();
  k_secv_map = struct();
  % mi am creat cele doua strcuturi de date
  for i = 1:nr_words
    word_map.(words_set{i}) = i;
  endfor
  for i = 1:nr_k_secv
    k_secv_map.(k_secv_set{i}) = i;
  endfor
  % am mapat cu indecsii

  for i = 1:length(k_secv_corpus)
    curr = k_secv_corpus{i};
    index_secv = k_secv_map.(curr);
    next_word = corpus_words{i + k};
    % am memorat indicele cuvantului urmator din harta de cuvinte
    next_word_idx = word_map.(next_word);
    retval(index_secv, next_word_idx) = retval(index_secv, next_word_idx) + 1;
    % am incrementat cu unu valoarea de pe rândul index_secv și coloana next_word_idx
  endfor

endfunction