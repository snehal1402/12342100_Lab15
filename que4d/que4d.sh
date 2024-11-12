#!/bin/bash
input_file="heart.csv"
output_data="que4d.dat"

awk -F',' -v age_40_50=0 -v age_50_60=0 -v age_60_70=0 -v age_70_80=0 -v age_80_90=0 -v age_90_100=0 '
NR > 1 && $8 == 1 {
    age = $1
    if (age >= 40 && age < 50) age_40_50++
    else if (age >= 50 && age < 60) age_50_60++
    else if (age >= 60 && age < 70) age_60_70++
    else if (age >= 70 && age < 80) age_70_80++
    else if (age >= 80 && age < 90) age_80_90++
    else if (age >= 90 && age <= 100) age_90_100++
}
END {
    print "40-50", age_40_50 > "'"$output_data"'"
    print "50-60", age_50_60 > "'"$output_data"'"
    print "60-70", age_60_70 > "'"$output_data"'"
    print "70-80", age_70_80 > "'"$output_data"'"
    print "80-90", age_80_90 > "'"$output_data"'"
    print "90-100", age_90_100 > "'"$output_data"'"
}' "$input_file"

echo "Data file with heart disease count by age group generated at $output_data."
