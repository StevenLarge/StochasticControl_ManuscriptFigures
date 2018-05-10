#This python scrip figures out what beta factor would be needed to ensure that the average friction <\zeta> = \gamma for equivalence of ensemble comparison
#
#Steven Large
#May 8th 2018

import os
import numpy as np

def ImportFriction(Filename):

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	Friction = []
	CPVals = []

	for index in range(len(TempData)):
		Parsed = TempData[index].split()

		CPVals.append(eval(Parsed[0]))
		Friction.append(eval(Parsed[1]))

	return CPVals,Friction


FrictionName = "Friction_CP1_A1_V1.dat"

CPVals,Friction = ImportFriction(FrictionName)

MeanFric = np.mean(Friction)

NewDt = MeanFric

print "\n\nNew dt value --> " + str(NewDt) + "\n\n" 



