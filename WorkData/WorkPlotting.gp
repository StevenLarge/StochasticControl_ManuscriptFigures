#GNUPLOT script to plot Stochastic Protocol ensembles with Quartic driving potential
#Steven Large
#April 10th 2017
#set term postscript landscape color enhanced lw 2 "Times-Roman,20"
set term pdfcairo color enhanced font "Times-New-Roman" size 12cm, 12cm
set output "WorkPlots2.pdf"
set border lw 0.5
set style circle radius graph 0.020
#set terminal postscript enhanced

set key autotitle columnhead
unset key
set key off

set logscale y
set logscale x
set format y "10^%T"
#set xrange [0:6.2831]
#set yrange [3:200]

POS = "at graph 0.15,0.85 font 'Helvetica'"

TLMARGIN = "set tmargin at screen 0.925; set bmargin at screen 0.657; set lmargin at screen 0.125; set rmargin at screen 0.391"
TMMARGIN = "set tmargin at screen 0.925; set bmargin at screen 0.657; set lmargin at screen 0.391; set rmargin at screen 0.657"
TRMARGIN = "set tmargin at screen 0.925; set bmargin at screen 0.657; set lmargin at screen 0.657; set rmargin at screen 0.925"

MLMARGIN = "set tmargin at screen 0.657; set bmargin at screen 0.391; set lmargin at screen 0.125; set rmargin at screen 0.391"
MMMARGIN = "set tmargin at screen 0.657; set bmargin at screen 0.391; set lmargin at screen 0.391; set rmargin at screen 0.657"
MRMARGIN = "set tmargin at screen 0.657; set bmargin at screen 0.391; set lmargin at screen 0.657; set rmargin at screen 0.925"

BLMARGIN = "set tmargin at screen 0.391; set bmargin at screen 0.125; set lmargin at screen 0.125; set rmargin at screen 0.391"
BMMARGIN = "set tmargin at screen 0.391; set bmargin at screen 0.125; set lmargin at screen 0.391; set rmargin at screen 0.657"
BRMARGIN = "set tmargin at screen 0.391; set bmargin at screen 0.125; set lmargin at screen 0.657; set rmargin at screen 0.925"

#MARGIN = "set tmargin at screen 0.975; set bmargin at screen 0.175; set lmargin at screen 0.150; set rmargin at screen 0.950"

NOYTICS = "unset ytics; unset ylabel"
NOXTICS = "unset xtics; unset xlabel"

set label 1 "Protocol duration τ^*" at screen 0.515,0.03 center font "Times-New-Roman,22"
set label 2 "Mean excess work ⟨{/Times-New-Roman-Italic W}_{ex}⟩^*" at screen 0.03,0.515 center rotate by 90 font "Times-New-Roman, 22"

set label 3 "⟨Δλ⟩^* = 4π" at screen 0.258,0.950 center font "Times-New-Roman, 20"
set label 4 "8π" at screen 0.524,0.950 center font "Times-New-Roman, 20"
set label 5 "16π" at screen 0.791,0.950 center font "Times-New-Roman, 20"

set label 6 "A^* = 0" at screen 0.950,0.791 center rotate by 270 font "Times-New-Roman, 20"
set label 7 "0.5" at screen 0.950,0.524 center rotate by 270 font "Times-New-Roman, 20"
set label 8 "2" at screen 0.950,0.258 center rotate by 270 font "Times-New-Roman, 20"

set label 9 "⟨δλ^2⟩^* = 16" at screen 0.160,0.86 font "Times-New-Roman, 13" textcolor rgb "#3288BD"
set label 10 "4" at screen 0.285,0.84 font "Times-New-Roman, 13" textcolor rgb "#99D594"
set label 11 "1" at screen 0.305,0.818 font "Times-New-Roman, 13" textcolor rgb "#FC8D59"
set label 12 "1/4" at screen 0.345,0.774 font "Times-New-Roman, 13" textcolor rgb "#D53E4F"

set object circle at screen 0.180,0.875 size scr 0.0025 fc rgb "#3288BD" fs transparent solid 0.9 noborder

#set label 1 "Control parameter λ" at screen 0.55,0.05 center font "Times-New-Roman, 15"
#set label 2 "Generalized friction ζ(λ)" at screen 0.05,0.575 center rotate by 90 font "Times-New-Roman, 15"

#set label 3 "A = 0" at screen 0.8,0.9 font "Times-New-Roman, 12"
#set label 4 "A = 1/2" at screen 0.8,0.85 font "Times-New-Roman, 12"
#set label 5 "A = 1" at screen 0.8,0.8 font "Times-New-Roman, 12"
#set label 6 "A = 2" at screen 0.8,0.75 font "Times-New-Roman, 12"
#set label 7 "A = 4" at screen 0.8,0.7 font "Times-New-Roman, 12" 

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

#d53e4f
#fc8d59
#99d594
#3288bd

@TLMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A0_V025_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A0_V1_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A0_V4_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A0_V16_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP1_A0_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A0_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A0_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A0_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@TMMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A0_V025_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A0_V1_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A0_V4_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A0_V16_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP2_A0_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A0_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A0_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A0_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@TRMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A0_V025_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A0_V1_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A0_V4_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A0_V16_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP3_A0_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A0_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A0_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A0_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@MLMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A1_V025_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A1_V1_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A1_V4_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A1_V16_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP1_A1_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A1_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A1_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A1_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@MMMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A1_V025_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A1_V1_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A1_V4_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A1_V16_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP2_A1_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A1_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A1_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A1_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@MRMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A1_V025_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A1_V1_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A1_V4_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A1_V16_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP3_A1_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A1_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A1_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A1_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@BLMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics font " ,17"
set ytics font " ,17"
set xtics (0.1 0, 0.2 1, 0.5 1, "10^0" 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, "10^2" 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1,"10^2" 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1,"10^4" 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A4_V025_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A4_V1_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A4_V4_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A4_V16_CP1_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP1_A4_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A4_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A4_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP1_A4_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@BMMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A4_V025_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A4_V1_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A4_V4_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A4_V16_CP2_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP2_A4_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A4_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A4_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP2_A4_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder

@BRMARGIN
set xtics format ""
set ytics format ""
set xrange [0.1:500]
set yrange [10:50000]
set xtics (0.1 0, 0.2 1, 0.5 1, 1 0, 2 1, 5 1, 10 0, 20 1, 50 1, 100 0, 200 1, 500 1)
set ytics (10 0, 20 1, 50 1, 100 0, 200 1, 500 1, 1000 0, 2000 1, 5000 1, 10000 0, 20000 1, 50000 1)
plot "TheoryWork_A4_V025_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70D53E4F", \
	"TheoryWork_A4_V1_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#70FC8D59", \
	"TheoryWork_A4_V4_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#7099D594", \
	"TheoryWork_A4_V16_CP3_NoDim.dat" using 1:2 with line lw 2.5 lc rgb "#703288BD", \
	"WorkTrend_CP3_A4_V025_NoDim.dat" using 1:2 with circles lc rgb "#D53E4F" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A4_V1_NoDim.dat" using 1:2 with circles lc rgb "#FC8D59" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A4_V4_NoDim.dat" using 1:2 with circles lc rgb "#99D594" fs transparent solid 0.5 noborder, \
	"WorkTrend_CP3_A4_V16_NoDim.dat" using 1:2 with circles lc rgb "#3288BD" fs transparent solid 0.5 noborder


unset multiplot

pause -1 "Hit any key to continue..."


