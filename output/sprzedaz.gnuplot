set datafile separator ','
set title "Sprzedaż towarów"
set ylabel "Towary[j]" # label for the Y axis
set xlabel 'Maksymalna praca[j]' # label for the X axis
plot "sprzedaz_jed.csv" using 1:2 with lines title "Stal", '' using 1:3 with lines title "Maszyny", '' using 1:4 with lines title "Ciągniki"
