#GNUPLOT script to plot Ensemble comparison
#Steven Large
#January 3rd 2018
set term pdfcairo color enhanced font "Times-New-Roman" size 12cm, 10cm
set output "EnsembleCompare.pdf"
set border lw 0.5
set style data l
set style circle radius graph 0.017

LMARGIN_TOP = "set tmargin at screen 0.95; set bmargin at screen 0.60; set lmargin at screen 0.120; set rmargin at screen 0.403"
MMARGIN_TOP = "set tmargin at screen 0.95; set bmargin at screen 0.60; set lmargin at screen 0.403; set rmargin at screen 0.686"
RMARGIN_TOP = "set tmargin at screen 0.95; set bmargin at screen 0.60; set lmargin at screen 0.686; set rmargin at screen 0.970"

LMARGIN_BOT = "set tmargin at screen 0.45; set bmargin at screen 0.10; set lmargin at screen 0.120; set rmargin at screen 0.403"
MMARGIN_BOT = "set tmargin at screen 0.45; set bmargin at screen 0.10; set lmargin at screen 0.403; set rmargin at screen 0.686"
RMARGIN_BOT = "set tmargin at screen 0.45; set bmargin at screen 0.10; set lmargin at screen 0.686; set rmargin at screen 0.970"

unset key
set key off

POS = "at graph 0.15,0.85 font 'Helvetica'"

#-------------------- LABELS ---------------------


#set label 1 "Protocol duration, τ/(⟨δ{/Times-New-Roman-Italic x}^2⟩/2{/Times-New-Roman-Italic D})" at screen 0.525,0.06 center font "Times-New-Roman, 15"
set label 1 "Protocol duration τ^*" at screen 0.545,0.06 center font "Times-New-Roman,17"
#set label 2 "Work, W/{/Times-New-Roman-Italic k}_B{/Times-New-Roman-Italic T}" at screen 0.04,0.275 center rotate by 90 font "Times-New-Roman, 15"
set label 2 "Mean excess work ⟨{/Times-New-Roman-Italic W}_{ex}⟩^*" at screen 0.04,0.275 center rotate by 90 font "Times-New-Roman,17"
set label 3 "Time t/τ" at screen 0.545,0.560 center font "Times-New-Roman, 17"
set label 4 "Trap minimum λ/⟨Δλ_{tot}⟩" at screen 0.04,0.775 center rotate by 90 font "Times-New-Roman, 17"

#set label 5 "⟨Δλ⟩/√⟨δ{/Times-New-Roman-Italic x}^2⟩ = 2" at screen 0.2415,0.470 center font "Times-New-Roman,15"
set label 5 "⟨Δλ⟩^* = 2" at screen 0.2615,0.470 center font "Times-New-Roman,15"
set label 6 "8" at screen 0.5445,0.470 center font "Times-New-Roman,15"
set label 7 "32" at screen 0.8275,0.470 center font "Times-New-Roman,15"

#set label 8 "Brownian bridge" at screen 0.2415,0.970 center font "Times-New-Roman,15"
#set label 8 "Constant velocity" at screen 0.2615,0.970 center font "Times-New-Roman,15"
set label 8 "Zero-barrier ratchet" at screen 0.2615,0.970 center font "Times-New-Roman,15"
set label 9 "Fixed distance" at screen 0.5445,0.970 center font "Times-New-Roman,15"
set label 10 "Fixed duration" at screen 0.8275,0.970 center font "Times-New-Roman,15"

#set label 11 "Brownian bridge" at screen 0.720,0.240 left font "Times-New-Roman,11"
set label 11 "Fixed duration" at screen 0.740, 0.160 left font "Times-New-Roman,11"
set label 12 "Fixed distance" at screen 0.740,0.200 left font "Times-New-Roman,11"
#set label 13 "Constant velocity" at screen 0.740,0.240 left font "Times-New-Roman,11"
set label 13 "Zero-barrier ratchet" at screen 0.740,0.240 left font "Times-New-Roman,11"

#set label 14 "Approximation" at screen 0.425,0.400 left font "Times-New-Roman,11"

#set label 15 "*" at screen 0.03,0.460 center font "Times-New-Roman,15"

#set arrow from screen 0.227,0.488 to screen 0.280,0.488 nohead lw 0.55 lc rgb "black"

set label 16 "(a)" at screen 0.100,0.975 center font "Times-New-Roman, 15"
set label 17 "(b)" at screen 0.100,0.475 center font "Times-New-Roman, 15"

set object circle at screen 0.720,0.200 size scr 0.0075 fc rgb "#FF0000" fs transparent solid 0.8 noborder
set object circle at screen 0.720,0.160 size scr 0.0075 fc rgb "#00FF00" lw 1.5 #fs transparent solid 0.8 noborder
set arrow from screen 0.710,0.240 to screen 0.730,0.240 nohead lw 2.0 lc rgb "#500000FF"

#--------------------- PLOTS ---------------------


set multiplot layout 2,3 rowsfirst

@MMARGIN_TOP
set xrange[-0.15:1.20]
set yrange[-0.15:1.20]
set xtics format ""
set ytics format ""
#set xtics ("0" 0 0, 0.25 1, "1/2" 0.50 0, 0.75 1, "1" 1 0)
#set ytics ("0" 0 0, 0.25 1, "1/2" 0.50 0, 0.75 1, "1" 1 0)
set xtics (0 0, 0.25 1, 0.50 0, 0.75 1, 1 0)
set ytics (0 0, 0.25 1, 0.50 0, 0.75 1, 1 0)
plot "Trajectories_Bridge/CP_Trajectory_1000_0_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#50FF0000", \
	"Trajectories_Bridge/CP_Trajectory_1000_1_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#50FF0000", \
	"Trajectories_Bridge/CP_Trajectory_1000_2_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#50FF0000", \
	"Trajectories_Bridge/CP_Trajectory_1000_3_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#50FF0000", \
	"Trajectories_Bridge/CP_Trajectory_1000_4_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#50FF0000"

	#1B9E77

	#, \
	#"Trajectories_Bridge/CP_Trajectory_1000_5_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000", \
	#"Trajectories_Bridge/CP_Trajectory_1000_6_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000", \
	#"Trajectories_Bridge/CP_Trajectory_1000_7_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000", \
	#"Trajectories_Bridge/CP_Trajectory_1000_8_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000", \
	#"Trajectories_Bridge/CP_Trajectory_1000_9_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000", \
	#"Trajectories_Bridge/CP_Trajectory_1000_10_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#90FF0000"


@RMARGIN_TOP
set xtics format ""
set ytics format ""
set xtics (0 0, 0.25 1, 0.50 0, 0.75 1, 1 0)
set ytics (0 0, 0.25 1, 0.50 0, 0.75 1, 1 0)
plot "Trajectories_Time/CP_Trajectory_1000_0_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#5000FF00", \
	"Trajectories_Time/CP_Trajectory_1000_1_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#5000FF00", \
	"Trajectories_Time/CP_Trajectory_1000_2_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#5000FF00", \
	"Trajectories_Time/CP_Trajectory_1000_3_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#5000FF00", \
	"Trajectories_Time/CP_Trajectory_1000_4_Non.dat" using 1:2 with line lt 1 lw 1.0 lc rgb "#5000FF00"

	#D95F02

	#, \
	#"Trajectories_Time/CP_Trajectory_1000_5_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00", \
	#"Trajectories_Time/CP_Trajectory_1000_6_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00", \
	#"Trajectories_Time/CP_Trajectory_1000_7_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00", \
	#"Trajectories_Time/CP_Trajectory_1000_8_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00", \
	#"Trajectories_Time/CP_Trajectory_1000_9_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00", \
	#"Trajectories_Time/CP_Trajectory_1000_10_Non.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#9000FF00"


@LMARGIN_TOP
set xtics format ""
set ytics format ""
set xtics ("0" 0 0, 0.25 1,"1/2" 0.50 0, 0.75 1,"1" 1 0)
set ytics ("0" 0 0, 0.25 1,"1/2" 0.50 0, 0.75 1,"1" 1 0)
plot "Trajectories_ConstVel/CP_Trajectory_0.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_1.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_2.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_3.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_4.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_5.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_6.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_7.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_8.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_9.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_10.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_11.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_12.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_13.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_14.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_15.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_16.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#907570B3", \
	"Trajectories_ConstVel/CP_Trajectory_17.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_18.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_19.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_20.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_21.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_22.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_23.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_24.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_25.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_26.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_27.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_28.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_29.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF", \
	"Trajectories_ConstVel/CP_Trajectory_30.dat" using 1:2 with line lt 1 lw 1.5 lc rgb "#500000FF"

	#7570B3


set logscale x
set logscale y

@LMARGIN_BOT
set xrange[0.7:3000]
set yrange[30:30000]
set xtics format ""
set ytics format ""
set xtics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, "10^1" 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1,"10^3" 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, "10^0" 1 0, 3 1, 5 1, 7 1, 9 1, "10^1" 10 0, 30 1, 50 1, 70 1, 90 1, "10^2" 100 0, 300 1, 500 1, 700 1, 900 1, "10^3" 1000 0, 3000 1, 5000 1, 7000 1, 9000 1,"10^4" 10000 0)
plot "NonDimData2/WorkTotal_k32_L4_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
	"NonDimData_Final/WorkTotal_k32_L4_g1_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L4_g1_Bridge_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder
	

#"NonDimData2/WorkTotal_k32_L4_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
#	"NonDimData_Jan/WorkTotal_k32_L4_g02_MOD_2_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
#	"NonDimData_Bridge_Jan/WorkTotal_k32_L4_g02_MOD_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder
	


	#"NonDimData_CV/ConstVelExact_L4_1.0_S32_NoDim.dat" with line lt 1 dashtype 2 lw 2.0 lc rgb "#0000FF", \
	#"NonDimData2/WorkTotal_k32_L4_g02_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	#"NonDimData_Bridge/WorkTotal_k32_L4_g02_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder

@MMARGIN_BOT
set xrange[0.7:3000]
set yrange[30:30000]
set xtics format ""
set ytics format ""
set xtics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
plot "NonDimData2/WorkTotal_k32_L16_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
	"NonDimData_Final/WorkTotal_k32_L16_g1_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L16_g1_Bridge_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder



#"NonDimData2/WorkTotal_k32_L16_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
#	"NonDimData_Jan/WorkTotal_k32_L16_g02_MOD_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
#	"NonDimData_Bridge_Jan/WorkTotal_k32_L16_g02_MOD_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder


	#"NonDimData_CV/ConstVelExact_L16_1.0_S32_NoDim.dat" with line lt 1 dashtype 2 lw 2.0 lc rgb "#0000FF", \
	#"NonDimData2/WorkTotal_k32_L16_g02_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	#"NonDimData_Bridge/WorkTotal_k32_L16_g02_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder


@RMARGIN_BOT
set xrange[0.7:3000]
set yrange[30:30000]
set xtics format ""
set ytics format ""
set xtics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
set ytics (0.1 1, 0.3 1, 0.5 1, 0.7 1, 0.9 1, 1 0, 3 1, 5 1, 7 1, 9 1, 10 0, 30 1, 50 1, 70 1, 90 1, 100 0, 300 1, 500 1, 700 1, 900 1, 1000 0, 3000 1, 5000 1, 7000 1, 9000 1, 10000 0)
plot "NonDimData2/WorkTotal_k32_L64_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
	"NonDimData_Final/WorkTotal_k32_L64_g1_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	"NonDimData_Final/WorkTotal_k32_L64_g1_Bridge_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder


#"NonDimData2/WorkTotal_k32_L64_Theory_NoDim.dat" with line lt 1 lw 2.5 lc rgb "#800000FF", \
#	"NonDimData_Jan/WorkTotal_k32_L64_g02_MOD_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
#	"NonDimData_Bridge_Jan/WorkTotal_k32_L64_g02_MOD_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder



	#"NonDimData_CV/ConstVelExact_L64_1.0_S32_NoDim.dat" with line lt 1 dashtype 2 lw 2.0 lc rgb "#0000FF", \
	#"NonDimData2/WorkTotal_k32_L64_g02_NoDim.dat" with circles lc rgb "#FF0000" fs transparent solid 0.5 noborder, \
	#"NonDimData_Bridge/WorkTotal_k32_L64_g02_NoDim.dat" with circles lc rgb "#8000FF00" lw 1.5 #fs transparent solid 0.5 noborder

unset multiplot



