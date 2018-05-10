#This python script generates the theoretical predictions of the excess work for each of the sinusoidal potentials
#
#Steven Large
#May 7th 2018

import os
import numpy as np
from math import *

def ReadFrictionData(Path,Filename):

	CompleteName = os.path.join(Path,Filename)

	file1 = open(CompleteName,'r')
	TempData = file1.readlines()
	file1.close()

	Friction = []
	CPVals = []
	OptVel = []

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		CPVals.append(eval(Parsed[0]))
		Friction.append(eval(Parsed[1]))
		OptVel.append(eval(Parsed[2]))

	return Friction, CPVals, OptVel


def WriteTheoryData(Filename,TimeRange,WorkD,WorkS,WorkT):
	
	file1 = open(Filename,'w')

	for index in range(len(TimeRange)):
		file1.write("%lf\t%lf\t%lf\t%lf\n" % (TimeRange[index],WorkD[index],WorkS[index],WorkT[index]))

	file1.close()


def GenerateThermoLength(Friction,CPVal):

	ThermoLength = 0
	dX = CPVal[1]-CPVal[0]

	for index in range(len(Friction)):
		ThermoLength += sqrt(Friction[index])*dX

	return ThermoLength



ReadPath = "/Users/stevelarge/Research/StochasticControl/Sinusoidal_CPP/ClusterData/FrictionData/"

FrictionFile1 = "Friction_k4_v1_A0.dat"
FrictionFile2 = "Friction_k4_v1_A05.dat"
FrictionFile3 = "Friction_k4_v1_A1.dat"
FrictionFile4 = "Friction_k4_v1_A2.dat"
FrictionFile5 = "Friction_k4_v1_A4.dat"

Friction_A0,CPVals_A0,OptVel_A0 = ReadFrictionData(ReadPath,FrictionFile1)
Friction_A05,CPVals_A05,OptVel_A05 = ReadFrictionData(ReadPath,FrictionFile2)
Friction_A1,CPVals_A1,OptVel_A1 = ReadFrictionData(ReadPath,FrictionFile3)
Friction_A2,CPVals_A2,OptVel_A2 = ReadFrictionData(ReadPath,FrictionFile4)
Friction_A4,CPVals_A4,OptVel_A4 = ReadFrictionData(ReadPath,FrictionFile5)

TimeRange = []

StartTime = 0.1
MaxTime = 1000
dT = 0.1

while StartTime <= MaxTime:
	TimeRange.append(StartTime)
	StartTime += dT

CPDist = [0.5,1,2]
VelVar = [0.25,1,4,16]

VelVar_Str = ["025","1","4","16"]

TDL_A0 = GenerateThermoLength(Friction_A0,CPVals_A0)
TDL_A05 = GenerateThermoLength(Friction_A05,CPVals_A05)
TDL_A1 = GenerateThermoLength(Friction_A1,CPVals_A1)
TDL_A2 = GenerateThermoLength(Friction_A2,CPVals_A2)
TDL_A4 = GenerateThermoLength(Friction_A4,CPVals_A4)

MeanFric_A0 = np.mean(Friction_A0)
MeanFric_A05 = np.mean(Friction_A05)
MeanFric_A1 = np.mean(Friction_A1)
MeanFric_A2 = np.mean(Friction_A2)
MeanFric_A4 = np.mean(Friction_A4)

print "Mean Friction A0 --> " + str(MeanFric_A0)
print "Mean Friction A05 --> " + str(MeanFric_A05)
print "Mean Friction A1 --> " + str(MeanFric_A1)
print "Mean Friction A2 --> " + str(MeanFric_A2)
print "Mean Friction A4 --> " + str(MeanFric_A4)

for index0 in range(len(CPDist)):

	for index1 in range(len(VelVar)):

		WorkD_A0 = []
		WorkD_A05 = []
		WorkD_A1 = []
		WorkD_A2 = []
		WorkD_A4 = []

		WorkS_A0 = []
		WorkS_A05 = []
		WorkS_A1 = []
		WorkS_A2 = []
		WorkS_A4 = []

		WorkT_A0 = []
		WorkT_A05 = []
		WorkT_A1 = []
		WorkT_A2 = []
		WorkT_A4 = []

		for index2 in range(len(TimeRange)):
			WorkD_A0.append(CPDist[index0]*CPDist[index0]*TDL_A0*TDL_A0/TimeRange[index2])
			WorkD_A05.append(CPDist[index0]*CPDist[index0]*TDL_A05*TDL_A05/TimeRange[index2])
			WorkD_A1.append(CPDist[index0]*CPDist[index0]*TDL_A1*TDL_A1/TimeRange[index2])
			WorkD_A2.append(CPDist[index0]*CPDist[index0]*TDL_A2*TDL_A2/TimeRange[index2])
			WorkD_A4.append(CPDist[index0]*CPDist[index0]*TDL_A4*TDL_A4/TimeRange[index2])

			WorkS_A0.append(MeanFric_A0*TimeRange[index2]*VelVar[index1])
			WorkS_A05.append(MeanFric_A05*TimeRange[index2]*VelVar[index1])
			WorkS_A1.append(MeanFric_A1*TimeRange[index2]*VelVar[index1])
			WorkS_A2.append(MeanFric_A2*TimeRange[index2]*VelVar[index1])
			WorkS_A4.append(MeanFric_A4*TimeRange[index2]*VelVar[index1])

			WorkT_A0.append(WorkS_A0[index2] + WorkD_A0[index2])
			WorkT_A05.append(WorkS_A05[index2] + WorkD_A05[index2])
			WorkT_A1.append(WorkS_A1[index2] + WorkD_A1[index2])
			WorkT_A2.append(WorkS_A2[index2] + WorkD_A2[index2])
			WorkT_A4.append(WorkS_A4[index2] + WorkD_A4[index2])

		WriteName_A0 = "TheoryWork_A0_V" + VelVar_Str[index1] + "_CP" + str(index0+1) + ".dat"
		WriteName_A05 = "TheoryWork_A05_V" + VelVar_Str[index1] + "_CP" + str(index0+1) + ".dat"
		WriteName_A1 = "TheoryWork_A1_V" + VelVar_Str[index1] + "_CP" + str(index0+1) + ".dat"
		WriteName_A2 = "TheoryWork_A2_V" + VelVar_Str[index1] + "_CP" + str(index0+1) + ".dat"
		WriteName_A4 = "TheoryWork_A4_V" + VelVar_Str[index1] + "_CP" + str(index0+1) + ".dat"

		WriteTheoryData(WriteName_A0,TimeRange,WorkD_A0,WorkS_A0,WorkT_A0)
		WriteTheoryData(WriteName_A05,TimeRange,WorkD_A05,WorkS_A05,WorkT_A05)
		WriteTheoryData(WriteName_A1,TimeRange,WorkD_A1,WorkS_A1,WorkT_A1)
		WriteTheoryData(WriteName_A2,TimeRange,WorkD_A2,WorkS_A2,WorkT_A2)
		WriteTheoryData(WriteName_A4,TimeRange,WorkD_A4,WorkS_A4,WorkT_A4)










