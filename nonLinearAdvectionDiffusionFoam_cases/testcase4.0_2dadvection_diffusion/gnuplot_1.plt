set title "Nx*Ny=50*50 Nt=200 \n 'x vs U' "
#unset key #comment it to see time values as label
set xlabel "x(m)"
set ylabel "U(m/s)"
set xrange [0.0:2.1]
set yrange [0.0:2.2]
set terminal png
set output "Results/Tnx4.0.png"
plot 'postProcessing/singleGraph_x/0/line_U.xy' w l title "T=0",\
	 'postProcessing/singleGraph_x/0.5/line_U.xy' w l title "T=0.5"
	 
set title "Nx*Ny=50*50 Nt=200 \n 'y vs U' "
set output "Results/Tny4.0.png"
plot 'postProcessing/singleGraph_y/0/line_U.xy' w l title "T=0",\
	 'postProcessing/singleGraph_y/0.5/line_U.xy' w l title "T=0.5"
