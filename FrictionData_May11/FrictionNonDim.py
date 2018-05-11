#Python script to normalize the friction data by teh zero-barrier limit
#
#Steven Large
#May 7th 2018

import os
from math import *

def ReadFrictionData(Filename):

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	CPVal = []
	Friction = []

	for index in range(len(TempData)):
		Parsed = TempData[index].split()

		CPVal.append(eval(Parsed[0]))
		Friction.append(eval(Parsed[1]))

	return CPVal,Friction


def WriteFriction(Filename,CPVals,Friction):

	file1 = open(Filename,'w')

	for index in range(len(CPVals)):
		file1.write("%lf\t%lf\n" % (CPVals[index], Friction[index]))

	file1.close()


ViscoFriction = -log(0.25)/0.1

FrictionName_A0 = "Friction_CP2_A0_V1.dat"
FrictionName_A05 = "Friction_CP2_A05_V1.dat"
FrictionName_A1 = "Friction_CP2_A1_V1.dat"
FrictionName_A2 = "Friction_CP2_A2_V1.dat"
FrictionName_A4 = "Friction_CP2_A4_V1.dat"

CPVals_A0,Friction_A0 = ReadFrictionData(FrictionName_A0)
CPVals_A05,Friction_A05 = ReadFrictionData(FrictionName_A05)
CPVals_A1,Friction_A1 = ReadFrictionData(FrictionName_A1)
CPVals_A2,Friction_A2 = ReadFrictionData(FrictionName_A2)
CPVals_A4,Friction_A4 = ReadFrictionData(FrictionName_A4)

for index in range(len(Friction_A0)):

	Friction_A0[index] = Friction_A0[index]/ViscoFriction
	Friction_A05[index] = Friction_A05[index]/ViscoFriction
	Friction_A1[index] = Friction_A1[index]/ViscoFriction
	Friction_A2[index] = Friction_A2[index]/ViscoFriction
	Friction_A4[index] = Friction_A4[index]/ViscoFriction


FrictionName_A0 = "FrictionMod_A0.dat"
FrictionName_A05 = "FrictionMod_A05.dat"
FrictionName_A1 = "FrictionMod_A1.dat"
FrictionName_A2 = "FrictionMod_A2.dat"
FrictionName_A4 = "FrictionMod_A4.dat"

WriteFriction(FrictionName_A0,CPVals_A0,Friction_A0)
WriteFriction(FrictionName_A05,CPVals_A05,Friction_A05)
WriteFriction(FrictionName_A1,CPVals_A1,Friction_A1)
WriteFriction(FrictionName_A2,CPVals_A2,Friction_A2)
WriteFriction(FrictionName_A4,CPVals_A4,Friction_A4)






