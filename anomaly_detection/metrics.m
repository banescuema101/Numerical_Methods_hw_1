function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
  epsilon = 0.000001;

  precision = true_positives / (true_positives + false_positives + epsilon);
  recall = true_positives / (true_positives + false_negatives + epsilon);

  if precision + recall == 0
    F1 = 0; % ar fi fost imposibila impartirea la 0, cand calculez media
  else
    F1 = 2 * precision * recall / (precision + recall);
  endif
endfunction