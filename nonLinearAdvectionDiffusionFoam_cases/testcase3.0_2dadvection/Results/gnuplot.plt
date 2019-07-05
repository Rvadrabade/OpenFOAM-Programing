set title "x vs U "
set xlabel "x(m)"
set ylabel "U(m/s)"
set yrange [0.8:2.2]
set terminal png
set output "myPlot_x.png"
list1=system("ls postProcessing/singleGraph_x")
do for [i in list1] {
plot for [i in list1] "postProcessing/singleGraph_x/".i."/line_U.xy"\
using 1:2 every ::5 with lines title "Time = ".i
}
set output "myPlot_y.png"
list1=system("ls postProcessing/singleGraph_y")
do for [i in list1] {
plot for [i in list1] "postProcessing/singleGraph_y/".i."/line_U.xy"\
using 1:2 every ::5 with lines title "Time = ".i
}
