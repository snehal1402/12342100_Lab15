set terminal png
set output 'que4a.png'
set style data histogram
set style fill solid border -1
set boxwidth 0.5
set key outside box
set xlabel "Gender (0 = Female, 1 = Male)"
set ylabel "Number of People"
set title "Gender vs Number of People with Heart Disease"
set xrange [-0.5:1.5]  
plot "< awk -F',' '$8 == 1 {print $2}' heart.csv | sort | uniq -c | awk '{print $2,$1}' " using 2:xtic(1) with boxes title "People with heart disease"

