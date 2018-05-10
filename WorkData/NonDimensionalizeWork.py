#This python script nondimensionalizes the work files from stochastic protocol ensembles
#
#Steven Large
#May 9th 2018

import os
import numpy as np
from math import *

def ImportWorkTheory(Filename):

	ProtocolTime = []
	Work = []

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		ProtocolTime.append(eval(Parsed[0]))
		Work.append(eval(Parsed[3]))

	return ProtocolTime,Work


def ImportWorkNumerical(Filename):

	ProtocolTime = []
	Work = []

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		ProtocolTime.append(eval(Parsed[0]))
		Work.append(eval(Parsed[1]))

	return ProtocolTime,Work

def NonDim(Time):

	for index in range(len(Time)):
		Time[index] = Time[index]*float(2)*float(4)/float(12)

	return Time

def WriteWork(Filename,Time,Work):

	file1 = open(Filename,'w')

	for index in range(len(Time)):
		file1.write("%lf\t%lf\n" % (Time[index], Work[index]))

	file1.close()


TheoryName_Base = "TheoryWork_A"
SimName_Base = "WorkTrend_CP"

AVals = ["0","05","1","2","4"]
CPVals = ["1","2","3"]
Var = ["025","1","4","16"]

for index1 in range(len(CPVals)):
	for index2 in range(len(AVals)):
		for index3 in range(len(Var)):

			TheoryName = TheoryName_Base + AVals[index2] + "_V" + Var[index3] + "_CP" + CPVals[index1] + ".dat"
			SimName = SimName_Base + CPVals[index1] + "_A" + AVals[index2] + "_V" + Var[index3] + ".dat"

			WriteNameTheory = TheoryName_Base + AVals[index2] + "_V" + Var[index3] + "_CP" + CPVals[index1] + "_NoDim.dat"
			WriteSimName = SimName_Base + CPVals[index1] + "_A" + AVals[index2] + "_V" + Var[index3] + "_NoDim.dat"

			TimeTheory,WorkTheory = ImportWorkTheory(TheoryName)
			TimeSim,WorkSim = ImportWorkNumerical(SimName)

			TimeTheoryND = NonDim(TimeTheory)
			TimeSimND = NonDim(TimeSim)

			WriteWork(WriteNameTheory,TimeTheoryND,WorkTheory)
			WriteWork(WriteSimName,TimeSimND,WorkSim)


