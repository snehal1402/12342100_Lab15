set datafile separator "," 
set terminal png
set output 'que4c.png'
set xlabel "Age"
set ylabel "Cholesterol"
set title "Age vs Cholesterol who dont have Heart Disease)"

plot "que4c.csv" using 1:2 with linespoints title "Age vs Cholesterol"
