function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
  pas = (max(probabilities) - min(probabilities)) / 1000;
  % am calculat pasul.
  best_F1 = 0;
  best_epsilon = 0;
    for epsilon = min(probabilities):pas:max(probabilities)
    predictions = zeros(size(probabilities));
    for i = 1:length(probabilities)
      if (probabilities(i) < epsilon)
        % consider punctul de date ca fiind un outlier
        predictions(i) = 1;
      else
        predictions(i) = 0;
      endif
    endfor

    precision = sum((predictions == 1) & (truths == 1)) / sum(predictions == 1);
    recall = sum((predictions == 1) & (truths == 1)) / sum(truths == 1);
    F1 = (2 * precision * recall) / (precision + recall);

    if F1 > best_F1
      % actualizez rezultatele.
      best_F1 = F1;
      best_epsilon = epsilon;
      associated_precision = precision;
      associated_recall = recall;
    endif
  endfor
endfunction
