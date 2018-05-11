#Plotting script for generalized friction over a single period of the underlying potential
#
#Steven Large
#May 5th 2018

import os
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

def ImportFriction(Filename):

	file1 = open(Filename,'r')
	TempData = file1.readlines()
	file1.close()

	Friction = []
	CP = []

	for index in range(len(TempData)):
		Parsed = TempData[index].split()
		Friction.append(eval(Parsed[1]))
		CP.append(eval(Parsed[0]))

	return CP,Friction


Filename1 = "Friction_k4_v1_A0.dat"
Filename2 = "Friction_k4_v1_A05.dat"
Filename3 = "Friction_k4_v1_A1.dat"
Filename4 = "Friction_k4_v1_A2.dat"
Filename5 = "Friction_k4_v1_A4.dat"

CP1,Friction1 = ImportFriction(Filename1)
CP2,Friction2 = ImportFriction(Filename2)
CP3,Friction3 = ImportFriction(Filename3)
CP4,Friction4 = ImportFriction(Filename4)
CP5,Friction5 = ImportFriction(Filename5)

sns.set(style='darkgrid',color_codes=True)

fig,ax = plt.subplots(1,1)

pal = sns.color_palette('hls',5)

ax.plot(CP1,Friction1,color=pal[0],linewidth=2,label=r'A = 0')
ax.plot(CP2,Friction2,color=pal[1],linewidth=2,label=r'A = 0.5')
ax.plot(CP3,Friction3,color=pal[2],linewidth=2,label=r'A = 1')
ax.plot(CP4,Friction4,color=pal[3],linewidth=2,label=r'A = 2')
ax.plot(CP5,Friction5,color=pal[4],linewidth=2,label=r'A = 4')

ax.set_xlabel('Control parameter $\lambda$',fontsize=15)
ax.set_ylabel('Generalized friction $\zeta(\lambda)$',fontsize=15)

ax.set_yscale('log')

ax.legend(loc='upper right',fontsize=12)

plt.show()
plt.close()




