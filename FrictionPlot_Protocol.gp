#GNUPLOT script to plot Stochastic Protocol ensembles with Quartic driving potential
#Steven Large
#April 10th 2017
#set term postscript landscape color enhanced lw 2 "Times-Roman,20"
set term pdfcairo color enhanced font "Times-New-Roman" size 12cm, 12cm
set output "FrictionPlots_Protocol.pdf"
set border lw 0.5
set style circle radius graph 0.01

#set terminal postscript enhanced

set key autotitle columnhead
unset key
set key off

set logscale y
set format y "10^{%T}"
set xrange [0:1]
set yrange [0.1:1000]

POS = "at graph 0.15,0.85 font 'Helvetica'"


TMARGIN = "set tmargin at screen 0.950; set bmargin at screen 0.600; set lmargin at screen 0.100; set rmargin at screen 0.950"

BMARGIN = "set tmargin at screen 0.475; set bmargin at screen 0.125; set lmargin at screen 0.100; set rmargin at screen 0.950"

NOYTICS = "unset ytics; unset ylabel"
NOXTICS = "unset xtics; unset xlabel"

set label 1 "Control parameter λ^*" at screen 0.525,0.525 center font "Times-New-Roman, 20"
set label 2 "Generalized friction ζ(λ)^*" at screen 0.02,0.775 center rotate by 90 font "Times-New-Roman, 20"

set label 3 "Time t/τ" at screen 0.525,0.050 center font "Times-New-Roman, 20"
set label 4 "Control parameter λ^*" at screen 0.02,0.300 center rotate by 90 font "Times-New-Roman,20"

set label 5 "βE^‡" at screen 0.85,0.92 center font "Times-New-Roman, 16"
set label 6 "0" at screen 0.835,0.88 center font "Times-New-Roman, 14"
set label 7 "1" at screen 0.835,0.855 center font "Times-New-Roman, 14"
set label 8 "2" at screen 0.835,0.83 center font "Times-New-Roman, 14"
set label 9 "4" at screen 0.835,0.805 center font "Times-New-Roman, 14"
set label 10 "8" at screen 0.835,0.78 center font "Times-New-Roman, 14"

set label 11 "(a)" at screen 0.075,0.980 center font "Times-New-Roman, 16"
set label 12 "(b)" at screen 0.075,0.505 center font "Times-New-Roman, 16"

set arrow from screen 0.8525,0.88 to screen 0.875,0.88 nohead lw 2 lc rgb "#d0d1e6"
set arrow from screen 0.8525,0.855 to screen 0.875,0.855 nohead lw 2 lc rgb "#a6bddb"
set arrow from screen 0.8525,0.83 to screen 0.875,0.83 nohead lw 2 lc rgb "#74a9cf"
set arrow from screen 0.8525,0.805 to screen 0.875,0.805 nohead lw 2 lc rgb "#2b8cbe"
set arrow from screen 0.8525,0.78 to screen 0.875,0.78 nohead lw 2 lc rgb "#045a8d"

#set label 3 "βE^‡" at screen 0.8125,0.92 center font "Times-New-Roman, 14"
#set label 4 "0" at screen 0.795,0.85 center font "Times-New-Roman, 12"
#set label 5 "0.5" at screen 0.795,0.80 center font "Times-New-Roman, 12"
#set label 6 "1" at screen 0.795,0.75 center font "Times-New-Roman, 12"
#set label 7 "2" at screen 0.795,0.70 center font "Times-New-Roman, 12"
#set label 8 "4" at screen 0.795,0.65 center font "Times-New-Roman, 12"

#set arrow from screen 0.815,0.85 to screen 0.840,0.85 nohead lw 2 lc rgb "#d0d1e6"
#set arrow from screen 0.815,0.80 to screen 0.840,0.80 nohead lw 2 lc rgb "#a6bddb"
#set arrow from screen 0.815,0.75 to screen 0.840,0.75 nohead lw 2 lc rgb "#74a9cf"
#set arrow from screen 0.815,0.70 to screen 0.840,0.70 nohead lw 2 lc rgb "#2b8cbe"
#set arrow from screen 0.815,0.65 to screen 0.840,0.65 nohead lw 2 lc rgb "#045a8d"

#set label 1 "Protocol time τ, (s)" at screen 0.515,0.03 center font "Times-New-Roman,22"
#set label 2 "Work, k_{B}T" at screen 0.03,0.5 center rotate by 90 font "Times-New-Roman,22"

#set label 3 "Δλ = 20" at screen 0.95,0.7665 center rotate by 270 font "Times-Roman,20"
#set label 4 "Δλ = 40" at screen 0.95,0.4995 center rotate by 270 font "Times-Roman,20"
#set label 5 "Δλ = 80" at screen 0.95,0.2335 center rotate by 270 font "Times-Roman,20"

#set label 6 "k = 4" at screen 0.2375,0.925 center font "Times-New-Roman,20"
#set label 7 "k = 16" at screen 0.5125,0.925 center font "Times-New-Roman,20"
#set label 8 "k = 64" at screen 0.7875,0.925 center font "Times-New-Roman,20"

#set object circle at screen 0.705,0.14 size scr 0.0065 fc rgb "#FF0000" fs transparent solid 0.5 noborder
#set object circle at screen 0.87,0.14 size scr 0.0065 fc rgb "#9700D3" fs transparent solid 0.5 noborder

#set arrow from screen 0.7175,0.14 to screen 0.8575,0.14 heads filled lw 2 lc rgb "black"

#set label 9 "Overdamped" at screen 0.705,0.17 center font "Times-New-Roman,10"
#set label 10 "Underdamped" at screen 0.87,0.17 center font "Times-New-Roman,10"

#set arrow from screen 0.41,0.14 to screen 0.44,0.14 nohead lw 2.5 lc rgb "#50000000"
#set label 11 "Work: Theory Prediction" at screen 0.45,0.14 font "Times-New-Roman,10"

#set object circle at screen 0.435,0.17 size scr 0.0065 fc rgb "#FF0000" fs transparent solid 0.5 noborder
#set label 12 "Simulation Data" at screen 0.45,0.17 font "Times-New-Roman,10"

set multiplot layout 1,3 rowsfirst

@TMARGIN
set xtics format ""
set ytics format ""
#set xtics ("0" 0 0,"π/2" 1.5707 0 ,"π" 3.14 0,"3π/2" 4.7123 0,"2π" 6.28 0)
#set xtics ("0" 0 0, 0.25 1, "1/2" 0.5 0, 0.75 1, "1" 1 0)
#set xtics ("0" 0 0, 0.5 1, "1" 1 0, 1.5 1, "2" 2 0)
set xtics ("0" 0 0, 0.125 1, "1/4" 0.25 0, 0.375 1, "1/2" 0.5 0, 0.625 1,"3/4" 0.75 0, "1" 1 0, 1.25 1, "3/2" 1.5 0, 1.75 1, "2" 2 0)
set ytics (0.1 1, 0.2 1, 0.5 1, "10^0" 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, "10^2" 100 0, 200 1, 500 1, 1000 0)
plot "FrictionData_May11/FrictionMod_A4.dat" using ($1/2):($2) with line lt 1 lw 3.5 lc rgb "#045a8d", \
	"FrictionData_May11/FrictionMod_A2.dat" using ($1/2):($2) with line lt 1 lw 3.5 lc rgb "#2b8cbe", \
	"FrictionData_May11/FrictionMod_A1.dat" using ($1/2):($2) with line lt 1 lw 3.5 lc rgb "#74a9cf", \
	"FrictionData_May11/FrictionMod_A05.dat" using ($1/2):($2) with line lt 1 lw 3.5 lc rgb "#a6bddb", \
	"FrictionData_May11/FrictionMod_A0.dat" using ($1/2):($2) with line lt 1 lw 3.5 lc rgb "#d0d1e6"

@BMARGIN

unset logscale y

set xrange [0:1]
set yrange [0:1]
set xtics format ""
set ytics format ""
set xtics ("0" 0 0, 0.125 1, "1/4" 0.25 0, 0.375 1 ,"1/2" 0.5 0, 0.625 1, "3/4" 0.75 0, 0.875 1, "1" 1 0)
set ytics ("0" 0 0, 0.25 1, "1/2" 0.5 0, 0.75 1, "1" 1 0, 1.5 1, "2" 2 0)
plot "FrictionData_May11/Protocol_A4.dat" using ($2):($1/2) with line lt 1 lw 3.5 lc rgb "#045a8d", \
	"FrictionData_May11/Protocol_A2.dat" using ($2):($1/2) with line lt 1 lw 3.5 lc rgb "#2b8cbe", \
	"FrictionData_May11/Protocol_A1.dat" using ($2):($1/2) with line lt 1 lw 3.5 lc rgb "#74a9cf", \
	"FrictionData_May11/Protocol_A05.dat" using ($2):($1/2) with line lt 1 lw 3.5 lc rgb "#a6bddb", \
	"FrictionData_May11/Protocol_A0.dat" using ($2):($1/2) with line lt 1 lw 3.5 lc rgb "#d0d1e6"

unset multiplot

pause -1 "Hit any key to continue..."


