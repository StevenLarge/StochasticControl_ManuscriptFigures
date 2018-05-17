#This python script rescales the stochastic ensemble data so that it is correctly nondimensionalized to the specified values
#
#Steven Large
#May 15th 2018

import numpy as np
import matplotlib.pyplot as plt
import os
import seaborn as sns
from math import *

def ImportData(Path,Filename):

	CompleteName = os.path.join(Path,Filename)

	file1 = open(CompleteName,'r')
	TempData = file1.readlines()
	file1.close()

	Time = []
	Work = []

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		Time.append(eval(Parsed[0]))
		Work.append(eval(Parsed[1]))

	return Time,Work


NumericalPath = "/Users/stevelarge/Research/StochasticControl/StochasticEnsemble_Dec2017/NonDim_Final"



