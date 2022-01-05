set datafile separator ','
set title "Produkcja na rzecz innych towarów"
set ylabel "Towary[j]" # label for the Y axis
set xlabel 'Maksymalna praca[j]' # label for the X axis
plot "produkcje_na_rzecz.csv" using 1:2 with lines title "Stal", '' using 1:3 with lines title "Maszyny", '' using 1:4 with lines title "Ciągniki"
