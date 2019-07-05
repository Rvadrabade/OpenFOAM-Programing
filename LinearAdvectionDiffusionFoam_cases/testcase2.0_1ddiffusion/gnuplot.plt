set title "nu=0.1 Nx=20 Nt=200 \n 'x vs U' "
unset key #comment it to see time 
set xlabel "x(m)"
set ylabel "U(m/s)"
set xrange [0.0:2.1]
set yrange [0.9:2.1]
set terminal png
system("mkdir -p Results")
set output 'Results/T20.png'
list=system("ls postProcessing/singleGraph")
do for [i in list] {
plot for [i in list] "postProcessing/singleGraph/".i."/line_U.xy"\
using 1:2 every ::5 with lines title "T=".i
}
