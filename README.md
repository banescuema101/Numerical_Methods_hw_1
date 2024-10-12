
## TASK 1

# 1. Functia check_predictions
Am initializat cele 3 variabile, false_positives = 0, false_negatives = 0;
true_positives = 0, in care voi stoca numarul de false negative, false pozitive si adevaratele pozitive.
Dat fiind că predictions va primi predictiile modelului, iar truths, valorile reale, am iterat prin fiecare si le-am comparat.
Daca predictia era 1 si valoarea reala era 0, era pozitiv fals, daca aveam 1 si 1, pozitiv adevarat, 0 si 1 negativ fals.

# 2. Functia estimate_gaussian
Am initializat media cu 0, cat si varianța pentru setul de date pe care functia il primeste.
Apoi am calculat media pentru fiecare dintre vectorii coloana ai matricei, pe care am atribuit-o in mean_values. De asemenea, am
calculat si varianța, conform formulei.

# 3. Funcția gaussian_distribution(X, mean_value, variance)
Am aplicat formula pentru calculul densitatii probabilitatii de apariție
a unui element x(i) printre valorile din setul de date folosit, conform enuntului.

# 4. Functia metrics(true_pozitives, false_pozitives, false_negatives)
Am calulat valorile lui precision si recall, pe baza relatiilor
din enunt, apoi am calculat F1.

# 5. Funcția multivariate_gaussian
Am calculat numărul de puncte de date și dimensiunile si am 
calculat probabilitatea pentru fiecare punct, atribuit in variabila val, folosind funcția gaussian_distribution.

# 6. Functia optimal_threshold
Am calculat dimensiunea pasului dintre valorile minime si maxime, pentru a sti
cu ce pas iterez prin epsilonuri, apoi am parcurs de la valoarea minima, la cea mai mare cu pasul ,,pas'' calculat anterior.
Pentru fiecare epsilon in parte, dacă probabilitatea este mai mică decât pragul, punctul de date este considerat un outlier și ii
asociez valoarea 1, altfel ii asociez 0. De asemenea, am calculat precision, recall și scorul F1 pe baza predicțiilor și a
valorilor reale, concrete. La finalul primului for, am actualizat, daca a fost cazul, valorile best_F1, best_epsilon, associated_precision și associated_recall cu valorile curente.

## TASK 2

# 1. Functia build_kernel
Am construit matricea de kernel-uri K, de m linii si m coloane si am initializat-o cu zero,
apoi, am iterat prin fiecare pereche de exemple din setul de date transmis ca parametru, aplicand functia de kernel, pe fiecare pereche
de puncte de date, pentru a obtine valoarea asociata din matricea de kernel-uri de pe fiecare pozitie in parte.

# 2. Functia cholesky 
Am aplicat algoritmul cholesky, pe care l-am studiat in cadrul cursului de MN, in care
practic am descompus matricea intr-un produs de doua matrice: una inferior triunghiulara si transpusa ei.

# 3. Functia conjugate_gradient
Am implementat metoda prezentata in enunt.

# 4. Functia eval_value
Am initializat valoarea prezisa, pred, la zero, apoi pentru fiecare punct de date X(i,i)
am calculat valoarea kernel-ului dintre el si punctul x dat ca parametru, folosind functia de kernel, apoi am actualizat la pred, produsul dintre ce mi-a returnat functia de kernel si coeficientul corespuzator a(i).

# 5. Functia gaussian_kernel
Am calculat, intocmai formulei din cerinta kernelul gaussian.

# 6. Functia get_lower_inverse
Am optat pentru eliminarea gaussiana. Mai intai am initializat dimensiunile matricei L, si ale lui P,
apoi am parcurs coloanele, repectiv randurile matricei L, am calculat factorii de scalare si am modificat cele doua matrici L si P,
pentru a elimina elementele de deasupra diagonalei. Inainte de a returna matricea inversa, am normalizat-o, adica am impartit fiecare rand
la pivotul corespunzator din L(elem de pe D.P).

# 7. Functia get_predictions_params_iterative
Am initializat vectorul x cu zerouri, toleranta, reziduul initial r,
vectorul de directie v si numarul maxim de iteratii max_iter la 1000. Cat timp nu este atins nr maxim de iteratii si criteriul de
convergenta este corect, aplic metoda gradientului conjugat, dar putin modificata fata de cea din functia conjugate_gradient. In r_old am memorat
discrepanta dintre valorile observate si predictiile modelului, apoi in tk am calculat marimea pasului de-a lungul directiei de cautare v,
insa am luat in calcul si termenul de regularizare, lambda. Apoi, calculez coeficientul sk pentru directia conjugata, actualizez v si avansez
cu iteratiile. La final vectorului coloana a, ii voi atribui solutia finala, adica x.

# 8. Functia get_predictions_params
Am initializat matricea identitate, I, dupa care am calculat matricea inversa a sumei dintre matricea
identitate inmultita cu lambda si K(matricea kernel). Practic am folosit matricea inversa calculata pentru a rezolva sistemul
(lambda*I + K) * a = y, si astfel voi obtine la final vectorul coloana, ca si solutie.
    
Ulterior am implementat kernelul liniar si polinomial, conform explicatiilor oferite in enunt.

# 11. Functia split_dataset
m reprezinta nr. total de exemple din setul de date, apoi in variabila nr am definit numarul de exemple
care vor fi incluse in setul de antrenament, pe baza procentului dat ca parametru. In x_train am memorat primele nr linii din X, in y_train, primele nr elemente din y, in x_pred, liniile din X, de dupa nr, iar in y_pred, elementele din y de dupa nr.

## TASK 3

# 1. Functia distinct_k_secv
M-am folosit de functia unique pentru a gasi valorile unice, pe care le-am sortat in ordine alfabetica,
folosind sort si am returnat in final vectorul cu valorile unice sortate.

# 2. Functia distinct_words,
Am facut exact acelasi lucru ca in prima functie, doar ca am aplicat-o practic pe niste cuvinte.

# 3. Functia k_secv_idx
Am determinat in vectorul unique_k_secv toate secventele de caractere unice din vectorul transmis ca parametru,
iar in vectorul idx am retinut indicii elementelor unice din vectorul distinct_k_secv. Apoi am creat o harta cu ajutorul containers.Map, 
in care cheile sunt secventele de caractere unice si valorile sunt indicii.

# 4. Functia k_secv
Am definit un vector de celule B cu lungimea de length(A) - k, apoi am parcurs vectorul A, am extras pentru
fiecare element secventa de lungime k si am concatenat cu ajutorul lui strjoin elementele secventei, intr-un sir de caractere. Aceasta secventa
pe care mi am determinat-o, o memorez intr-o celula a vectorului B, care va contine in final toate secventele construite.

# 5-9. Functii deja definite in scheletul de cod.

# 10. Functia stochastic_matrix
Am creat un fel de dictionar, numit word_map, cu ajutorul lui struct(), functia de matlab
care ma ajuta sa imi definesc tipul special de structură de date, asemenator containerului, pe care il voi folosi pentru a
mapa cuvintele la indecși si a adauga fiecare cuvant in parte din words_set ca un camp in structura, valoarea acestuia
fiind indicele cuvantului in words_set. In mod similar am procedat pentru k_secv_map.
    Am iterat prin elementele din k_secv_corpus si am extras secventa curenta din corpul de date, in curr si indicele asociat secventei
curente din mapul de k_secvente in variabila index_secv. Apoi in next_word_idx am memorat indicele cuvantului urmator din harta de cuvinte,
word_map. In final, am incrementat cu unu valoarea de pe rândul index_secv și coloana next_word_idx, pentru ca functia sa imi returneze la final
matricea ce arată numarul de aparitii a unui anume cuvant dupa o anumita secventa.
    Obs! Incercasem folosind containers.Map, dar dura peste 50 de secunde pentru a imi genera solutia corecta.

# 11. Functia word_idx
Am adugat in word_map, harta de cuvinte, ca si cheie acel cuvant, si ca valoare indicele asociat, adica
pozitia cuvantului in vectorul distinct_wds. In final, returnez ,,harta''
