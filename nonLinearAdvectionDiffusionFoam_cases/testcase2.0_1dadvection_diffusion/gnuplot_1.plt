set title "Nx=50 Nt=200 \n 'x vs U' "
#unset key #comment it to see time values as label
set xlabel "x(m)"
set ylabel "U(m/s)"
set xrange [0.0:2.1]
set yrange [0.0:]
set terminal png
set output "Results/Tn2.0.png"
plot 'postProcessing/singleGraph/0/line_U.xy' w l title "T=0",\
	 'postProcessing/singleGraph/0.5/line_U.xy' w l title "T=0.5"
