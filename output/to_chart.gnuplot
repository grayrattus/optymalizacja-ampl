set datafile separator ','
set title "Rosnący zysk i koszty wraz ze zwiększeniem jednostek pracy"
set ylabel "[zł]" # label for the Y axis
set xlabel 'Maksymalna praca[j]' # label for the X axis
plot "to_chart.csv" using 1:2 with lines title "Zysk dla jednostek pracy", '' using 1:3 with lines title "Koszt dla jednostek pracy"
