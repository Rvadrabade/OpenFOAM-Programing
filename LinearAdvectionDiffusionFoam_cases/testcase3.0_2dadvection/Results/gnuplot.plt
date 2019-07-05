set title "x vs U "
set xlabel "x(m)"
set ylabel "U(m/s)"
set yrange [0.8:2.2]
set terminal png
set output "myPlot.png"
list=system("ls postProcessing/singleGraph")
do for [i in list] {
plot for [i in list] "postProcessing/singleGraph/".i."/line_U.xy"\
using 1:2 every ::5 with lines title "Time = ".i
}
