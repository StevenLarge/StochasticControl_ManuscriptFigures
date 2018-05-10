#GNUPLOT script to plot Stochastic ensemble results, after nondimensioanlization using k = 16 data
#Steven Large
#December 21st 2017
set term pdfcairo color enhanced font "Times-New-Roman" size 12cm, 5cm
set output "StochasticEnsemble.pdf"
set border lw 0.5
set style data l
set logscale y
set logscale x
set style circle radius graph 0.017

LMARGIN = "set tmargin at screen 0.87; set bmargin at screen 0.17; set lmargin at screen 0.100; set rmargin at screen 0.383"
MMARGIN = "set tmargin at screen 0.87; set bmargin at screen 0.17; set lmargin at screen 0.383; set rmargin at screen 0.666"
RMARGIN = "set tmargin at screen 0.87; set bmargin at screen 0.17; set lmargin at screen 0.666; set rmargin at screen 0.950"


unset key
set key off

POS = "at graph 0.15,0.85 font 'Helvetica'"

#set label 1 "Average protocol duration τ/(⟨δ{/Times-New-Roman-Italic x}^2⟩/2{/Times-New-Roman-Italic D})" at screen 0.525,0.06 center font "Times-New-Roman, 15"
set label 1 "Mean protocol duration ⟨τ⟩^*" at screen 0.525,0.05 center font "Times-New-Roman, 17"
#set label 1 "Average velocity, ⟨v⟩^*" at screen 0.525,0.06 center font "Times-New-Roman, 15"
#set label 2 "Work, W/{/Times-New-Roman-Italic k}_B{/Times-New-Roman-Italic T}" at screen 0.025,0.525 center rotate by 90 font "Times-New-Roman,15"
set label 2 "Mean excess work ⟨{/Times-New-Roman-Italic W}_{ex}⟩^*" at screen 0.025,0.525 center rotate by 90 font "Times-New-Roman, 17"
#set label 3 "Δλ/√⟨δ{/Times-New-Roman-Italic x}^2⟩ = 2" at screen 0.2415,0.9250 center font "Times-New-Roman, 15"
set label 3 "Δλ^* = 2" at screen 0.2415,0.9250 center font "Times-New-Roman, 16"
set label 4 "8" at screen 0.5245,0.9250 center font "Times-New-Roman,16"
set label 5 "32" at screen 0.8075,0.9250 center font "Times-New-Roman,16"

#set label 17 "*" at screen 0.018,0.900 center font "Times-New-Roman, 15"

#set arrow from screen 0.217,0.962 to screen 0.270,0.962 nohead lw 0.75 lc rgb "black"

#set object circle at screen 0.70,0.400 size scr 0.0075 fc rgb "red" fs transparent solid 0.25 noborder
#set object circle at screen 0.70,0.350 size scr 0.0075 fc rgb "orange" fs transparent solid 0.25 noborder
#set object circle at screen 0.70,0.300 size scr 0.0075 fc rgb "green" fs transparent solid 0.25 noborder
#set object circle at screen 0.70,0.250 size scr 0.0075 fc rgb "blue" fs transparent solid 0.25 noborder

#set label 6 "γ_{λ}" at screen 0.715,0.475 center font "Times-New-Roman,13"
#set label 7 "0.1" at screen 0.730,0.400 center font "Times-New-Roman,10"
#set label 8 "0.5" at screen 0.730,0.350 center font "Times-New-Roman,10"
#set label 9 "1.0" at screen 0.730,0.300 center font "Times-New-Roman,10"
#set label 10 "1.5" at screen 0.730,0.250 center font "Times-New-Roman,10"

set label 11 "\\~ τ^{-1}" at screen 0.625,0.250 center font "Times-New-Roman,15"
set label 12 "\\~ τ" at screen 0.480,0.300 center font "Times-New-Roman,15"

#set label 13 "Approximation" at screen 0.750,0.810 left font "Times-New-Roman,12"
#set label 14 "Langevin" at screen 0.680,0.690 left font "Times-New-Roman,12"
#set label 15 "simulation" at screen 0.680,0.650 left font "Times-New-Roman,12"

#set label 16 "*" at screen 0.719,0.480 center font "Times-New-Roman,8"

#set label 6 "γ_{λ}" at screen 0.165,0.775 center font "Times-New-Roman,13"
#set label 7 "0.1" at screen 0.180,0.700 center font "Times-New-Roman,13"
#set label 8 "0.5" at screen 0.180,0.650 center font "Times-New-Roman,13"
#set label 9 "1.0" at screen 0.180,0.600 center font "Times-New-Roman,13"
#set label 10 "2.0" at screen 0.180,0.550 center font "Times-New-Roman,13"
#set label 21 "4.0" at screen 0.180,0.500 center font "Times-New-Roman,13"

set label 6 "{/Times-New-Roman-Italic D}_{λ}" at screen 0.165,0.775 center font "Times-New-Roman,13"
set label 7 "25" at screen 0.170,0.700 left font "Times-New-Roman,13"
set label 8 "5" at screen 0.170,0.650 left font "Times-New-Roman,13"
set label 9 "2.5" at screen 0.170,0.600 left font "Times-New-Roman,13"
set label 10 "1" at screen 0.170,0.550 left font "Times-New-Roman,13"
set label 21 "0.5" at screen 0.170,0.500 left font "Times-New-Roman,13"


set label 26 "*" at screen 0.172,0.785 center font "Times-New-Roman,8"

set object circle at screen 0.15,0.700 size scr 0.0075 fc rgb "red" fs transparent solid 0.25 noborder
set object circle at screen 0.15,0.650 size scr 0.0075 fc rgb "orange" fs transparent solid 0.25 noborder
set object circle at screen 0.15,0.600 size scr 0.0075 fc rgb "green" fs transparent solid 0.25 noborder
set object circle at screen 0.15,0.550 size scr 0.0075 fc rgb "blue" fs transparent solid 0.25 noborder
set object circle at screen 0.15,0.500 size scr 0.0075 fc rgb "purple" fs transparent solid 0.25 noborder


#set label 6 "Total work [Eq.8]" at screen 0.71,0.300 left font "Times-New-Roman, 11"

#set arrow from screen 0.67,0.300 to screen 0.70,0.300 nohead lw 2.0 lc rgb "black"
#set arrow from screen 0.67,0.220 to screen 0.70,0.220 nohead lw 2.0 dashtype 2 lc rgb "black"


#set object circle at screen 0.145,0.830 size scr 0.001 fc rgb "black" fs transparent solid 1.0 noborder
#set label 9 "⟨δλ^2⟩" at screen 0.145,0.810 center font "Times-New-Roman, 11" 
#set label 10 "0.5" at screen 0.150,0.750 left font "Times-New-Roman, 11"
#set label 11 "1" at screen 0.150,0.710 left font "Times-New-Roman, 11"
#set label 12 "2" at screen 0.150,0.670 left font "Times-New-Roman, 11"
#set label 13 "4" at screen 0.150,0.630 left font "Times-New-Roman, 11"
#set label 14 "8" at screen 0.150,0.590 left font "Times-New-Roman, 11"

#set arrow from screen 0.120,0.750 to screen 0.140,0.750 nohead lw 3.0 lc rgb "purple"
#set arrow from screen 0.120,0.710 to screen 0.140,0.710 nohead lw 3.0 lc rgb "blue"
#set arrow from screen 0.120,0.670 to screen 0.140,0.670 nohead lw 3.0 lc rgb "green"
#set arrow from screen 0.120,0.630 to screen 0.140,0.630 nohead lw 3.0 lc rgb "orange"
#set arrow from screen 0.120,0.590 to screen 0.140,0.590 nohead lw 3.0 lc rgb "red"

set multiplot layout 1,3 rowsfirst

#WANT TO USE:
#
#USUAL:g02,g04,g08,
#
#CUT OUT SECOND SERIES AND REPLACE WITH g16 from BigFric

#D ratio values of 25 5 2.5 1 0.5 from g02 of old to g16 of BigFric


@LMARGIN
set xrange[0.7:3000]
#set xrange[0.001:10]
set yrange[30:100000]
#set yrange[30:30000]
set xtics format ""
set ytics format ""
set xtics ("10^{-3}" 0.001 0, 0.003 1, 0.005 1, 0.007 1, 0.009 1,"10^{-2}" 0.01 0, 0.03 1, 0.05 1, 0.07 1, 0.09 1,"10^{-1}" 0.1 0, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, "10^1" 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1,"10^3" 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, "10^0" 1 0, 3 1, 5 1, 7 1, 9 1, "10^1" 10 0, 30 1, 50 1, 70 1, 90 1, "10^2" 100 0, 300 1, 500 1, 700 1, 900 1, "10^3" 1000 0, 3000 1, 5000 1, 7000 1, 9000 1,"10^4" 10000 0, 30000 1, 50000 1, 70000 1, 90000 1, 100000 0)
plot "NonDimData2/WorkTotal_k32_L4_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L4_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L4_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData_Final/WorkTotal_k32_L4_g1_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L4_g2_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L4_g3_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L4_g4_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L4_g5_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L4_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L4_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L4_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData_Jan/WorkTotal_k32_L4_g02_MOD_3_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L4_g04_MOD_3_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L4_g08_MOD_3_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L4_g005_MOD_3_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L4_g16_MOD_3_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder




#"NonDimData2/WorkTotal_k32_L4_Theory_MOD_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L4_Theory_S_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L4_Theory_D_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L4_g02_MOD_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L4_g04_MOD_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L4_g08_MOD_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L4_g005_MOD_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L4_g16_MOD_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder


#"NonDimData2/WorkTotal_k32_L4_g02_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L4_g04_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L4_g08_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L4_g005_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L4_g08_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder





#"FromCluster6/WorkTotal_k32_L4_Theory.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#"FromCluster6/WorkTotal_k32_L4_g005_MOD.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L4_g01_MOD.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L4_g02_MOD.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L4_g04_MOD.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L4_g08_MOD.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L4_g16_MOD.dat" with circles lc rgb "grey" fs transparent solid 0.5 noborder

#"Data/ConstVelTheory_L1_1.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#850000FF", \
#"Data/ConstVelTheory_L1_2.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#8500FF00", \
#"Data/ConstVelTheory_L1_4.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FFA500", \
#"Data/ConstVelTheory_L1_8.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FF0000", \
#"Data/ConstVelExact_L1_0.5_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "purple", \
#"Data/ConstVelExact_L1_1.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "blue", \
#"Data/ConstVelExact_L1_2.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "green", \
#"Data/ConstVelExact_L1_4.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "orange", \
#"Data/ConstVelExact_L1_8.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "red"




@MMARGIN
set xrange[0.7:3000]
#set xrange[0.001:10]
set yrange[30:30000]
set yrange[30:100000]
set xtics format ""
set ytics format ""
set xtics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0, 30000 1, 50000 1, 70000 1, 90000 1, 100000 0)
plot "NonDimData2/WorkTotal_k32_L16_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L16_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L16_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData_Final/WorkTotal_k32_L16_g1_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L16_g2_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L16_g3_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L16_g4_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L16_g5_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder


#"NonDimData2/WorkTotal_k32_L16_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L16_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L16_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData_Jan/WorkTotal_k32_L16_g02_MOD_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L16_g04_MOD_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L16_g08_MOD_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L16_g005_MOD_2_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L16_g16_MOD_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder





#"NonDimData2/WorkTotal_k32_L16_Theory_MOD_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L16_Theory_S_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L16_Theory_D_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L16_g02_MOD_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L16_g04_MOD_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L16_g08_MOD_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L16_g005_MOD_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L16_g16_MOD_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L16_g02_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L16_g04_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L16_g08_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L16_g005_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L16_g08_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder




#"FromCluster6/WorkTotal_k32_L16_Theory.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#"FromCluster6/WorkTotal_k32_L16_g005_MOD.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L16_g01_MOD.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L16_g02_MOD.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L16_g04_MOD.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L16_g08_MOD.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L16_g16_MOD.dat" with circles lc rgb "grey" fs transparent solid 0.5 noborder


#"Data/ConstVelTheory_L8_1.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#850000FF", \
#"Data/ConstVelTheory_L8_2.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#8500FF00", \
#"Data/ConstVelTheory_L8_4.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FFA500", \
#"Data/ConstVelTheory_L8_8.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FF0000", \
#"Data/ConstVelExact_L8_0.5_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "purple", \
#"Data/ConstVelExact_L8_1.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "blue", \
#"Data/ConstVelExact_L8_2.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "green", \
#"Data/ConstVelExact_L8_4.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "orange", \
#"Data/ConstVelExact_L8_8.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "red"




@RMARGIN
set xrange[0.7:3000]
#set xrange[0.001:10]
set yrange[30:30000]
set yrange[30:100000]
set xtics format ""
set ytics format ""
set xtics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0, 30000 1, 50000 1, 70000 1, 90000 1, 100000 0)
plot "NonDimData2/WorkTotal_k32_L64_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L64_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData2/WorkTotal_k32_L64_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
	"NonDimData_Final/WorkTotal_k32_L64_g1_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L64_g2_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L64_g3_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L64_g4_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L64_g5_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L64_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L64_Theory_S_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L64_Theory_D_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData_Jan/WorkTotal_k32_L64_g02_MOD_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L64_g04_MOD_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData_Jan/WorkTotal_k32_L64_g08_MOD_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L64_g005_MOD_2_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric_Jan/WorkTotal_k32_L64_g16_MOD_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L64_Theory_MOD_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L64_Theory_S_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L64_Theory_D_MOD_NoDim.dat" with line lt 1 dashtype 2 lw 2.5 lc rgb "#85000000", \
#	"NonDimData2/WorkTotal_k32_L64_g02_MOD_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L64_g04_MOD_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#	"NonDimData2/WorkTotal_k32_L64_g08_MOD_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L64_g005_MOD_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#	"NonDimData_BigFric/WorkTotal_k32_L64_g16_MOD_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L64_g02_NoDim.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L64_g04_NoDim.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"NonDimData2/WorkTotal_k32_L64_g08_NoDim.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L64_g005_NoDim.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"NonDimData_BigFric/WorkTotal_k32_L64_g08_NoDim.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder




#"FromCluster6/WorkTotal_k32_L32_Theory.dat" with line lt 1 lw 2.5 lc rgb "#85000000", \
#"FromCluster6/WorkTotal_k32_L32_g005_MOD.dat" with circles lc rgb "red" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L32_g01_MOD.dat" with circles lc rgb "orange" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L32_g02_MOD.dat" with circles lc rgb "green" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L32_g04_MOD.dat" with circles lc rgb "blue" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L32_g08_MOD.dat" with circles lc rgb "purple" fs transparent solid 0.5 noborder, \
#"FromCluster6/WorkTotal_k32_L32_g16_MOD.dat" with circles lc rgb "grey" fs transparent solid 0.5 noborder



#"Data/ConstVelTheory_L64_1.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#850000FF", \
#"Data/ConstVelTheory_L64_2.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#8500FF00", \
#"Data/ConstVelTheory_L64_4.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FFA500", \
#"Data/ConstVelTheory_L64_8.0_S16.dat" with line lt 1 lw 2.5 lc rgb "#85FF0000", \
#"Data/ConstVelExact_L64_0.5_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "purple", \
#"Data/ConstVelExact_L64_1.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "blue", \
#"Data/ConstVelExact_L64_2.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "green", \
#"Data/ConstVelExact_L64_4.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "orange", \
#"Data/ConstVelExact_L64_8.0_S16.dat" with line lt 1 dashtype 2 lw 1.5 lc rgb "red"


unset multiplot
