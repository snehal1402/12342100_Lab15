# Age Group Distribution Data
age_40_50 = 50
age_50_60 = 65
age_60_70 = 32
age_70_80 = 6
age_80_90 = 0
age_90_100 = 0
total_people = age_40_50 + age_50_60 + age_60_70 + age_70_80 + age_80_90 + age_90_100

set terminal png
set output 'que4d.png'
set size square
set xrange [-1.2:1.2]
set yrange [-1.2:1.2]


unset border
unset tics
unset key

color_40_50 = "#CC0000"
color_50_60 = "#0033CC" 
color_60_70 = "#009900" 
color_70_80 = "#CCCC00" 
color_80_90 = "#6600CC" 
color_90_100 = "#CC6600"

angle_40_50 = 360 * age_40_50 / total_people
angle_50_60 = 360 * age_50_60 / total_people
angle_60_70 = 360 * age_60_70 / total_people
angle_70_80 = 360 * age_70_80 / total_people
angle_80_90 = 360 * age_80_90 / total_people
angle_90_100 = 360 * age_90_100 / total_people


set object 1 circle at 0,0 size 1 fillcolor rgb color_40_50 fillstyle solid 1 arc [0:angle_40_50]
set object 2 circle at 0,0 size 1 fillcolor rgb color_50_60 fillstyle solid 1 arc [angle_40_50:(angle_40_50 + angle_50_60)]
set object 3 circle at 0,0 size 1 fillcolor rgb color_60_70 fillstyle solid 1 arc [(angle_40_50 + angle_50_60):(angle_40_50 + angle_50_60 + angle_60_70)]
set object 4 circle at 0,0 size 1 fillcolor rgb color_70_80 fillstyle solid 1 arc [(angle_40_50 + angle_50_60 + angle_60_70):(angle_40_50 + angle_50_60 + angle_60_70 + angle_70_80)]
set object 5 circle at 0,0 size 1 fillcolor rgb color_80_90 fillstyle solid 1 arc [(angle_40_50 + angle_50_60 + angle_60_70 + angle_70_80):(angle_40_50 + angle_50_60 + angle_60_70 + angle_70_80 + angle_80_90)]
set object 6 circle at 0,0 size 1 fillcolor rgb color_90_100 fillstyle solid 1 arc [(angle_40_50 + angle_50_60 + angle_60_70 + angle_70_80 + angle_80_90):360]

set label 1 "age 40-50\n(50)" at 1.1,0.6 tc rgb color_40_50 font ",10"
set label 2 "age 50-60\n(65)" at -1.6,-0.3 tc rgb color_50_60 font ",10"
set label 3 "age 60-70\n(32)" at 0.8,-0.8 tc rgb color_60_70 font ",10"
set label 4 "age 70-80\n(6)" at 1.1,-0.2 tc rgb color_70_80 font ",10"
set label 5 "age 80-90\n(0)" at 0.7,1.2 tc rgb color_80_90 font ",10"
set label 6 "age 90-100\n(0)" at 1.1,0 tc rgb color_90_100 font ",10"

plot NaN notitle
