#Thie python script calculates the time-profile of teh optimal velocity protocols for the periodic potential
#
#Steven Large
#May 11th 2018

import os
from math import *

def ImportProtocol(Filename):
	
	CPVals = []
	Friction = []
	OptVel = []

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		CPVals.append(eval(Parsed[0]))
		OptVel.append(eval(Parsed[2]))

	return CPVals,OptVel


def WriteProtocol(Filename,CPVals,Times):

	file1 = open(Filename,'w')

	for index in range(len(CPVals)):
		file1.write("%lf\t%lf\n" % (CPVals[index],Times[index]))

	file1.close()

def CalcOptTime(CPVals,OptVel):

	Times = []

	dX = CPVals[1] - CPVals[0]

	CurrTime = 0

	for index in range(len(OptVel)):
		Times.append(CurrTime)
		CurrTime += dX/OptVel[index]

	for index in range(len(Times)):
		Times[index] = Times[index]/Times[-1]

	return Times


Filename_1 = "Friction_CP2_A0_V1.dat"
Filename_2 = "Friction_CP2_A05_V1.dat"
Filename_3 = "Friction_CP2_A1_V1.dat"
Filename_4 = "Friction_CP2_A2_V1.dat"
Filename_5 = "Friction_CP2_A4_V1.dat"

CPVals_1,Vel_1 = ImportProtocol(Filename_1)
CPVals_2,Vel_2 = ImportProtocol(Filename_2)
CPVals_3,Vel_3 = ImportProtocol(Filename_3)
CPVals_4,Vel_4 = ImportProtocol(Filename_4)
CPVals_5,Vel_5 = ImportProtocol(Filename_5)

Time_1 = CalcOptTime(CPVals_1,Vel_1)
Time_2 = CalcOptTime(CPVals_2,Vel_2)
Time_3 = CalcOptTime(CPVals_3,Vel_3)
Time_4 = CalcOptTime(CPVals_4,Vel_4)
Time_5 = CalcOptTime(CPVals_5,Vel_5)

WriteName_1 = "Protocol_A0.dat"
WriteName_2 = "Protocol_A05.dat"
WriteName_3 = "Protocol_A1.dat"
WriteName_4 = "Protocol_A2.dat"
WriteName_5 = "Protocol_A4.dat"

WriteProtocol(WriteName_1,CPVals_1,Time_1)
WriteProtocol(WriteName_2,CPVals_2,Time_2)
WriteProtocol(WriteName_3,CPVals_3,Time_3)
WriteProtocol(WriteName_4,CPVals_4,Time_4)
WriteProtocol(WriteName_5,CPVals_5,Time_5)



