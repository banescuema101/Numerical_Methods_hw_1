function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
  false_positives = 0;
  false_negatives = 0;
  true_positives = 0;
  for i = 1:length(predictions)
    if predictions(i) == 1 && truths(i) == 0
      % Pozitiv fals
      false_positives++;
    elseif predictions(i) == 0 && truths(i) == 1
      % Negativ fals
      false_negatives++;
    elseif predictions(i) == 1 && truths(i) == 1
      % Pozitiv adevărat
      true_positives++;
    endif
  endfor
endfunction