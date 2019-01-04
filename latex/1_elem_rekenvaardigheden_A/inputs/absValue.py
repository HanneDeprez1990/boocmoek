import matplotlib
import matplotlib.pyplot as plt
import numpy as np

#keuze van backend
matplotlib.use('SVG')   # generate SVG output by default
#matplotlib.use('AGG')   # generate png output by default (agg = anti grain)


#fig = plt.figure()
#In order to modify the figure, we need to reference it, so we'll store it to the variable called fig. 
#Then we define ax1 as a subplot on the figure. 



ax1 = plt.subplot2grid((1,1), (0,0))

#We're using subplot2grid here, which is one of two major ways to get subplots. 
#We'll talk more on how these work, but for now, you should see that we have 2 tuples provided with this, (1,1) and (0,0). 
#The 1,1 says this is a 1 x 1 grid. Then 0,0 is us saying the "starting point" for this sub plot will be 0,0.

x_waarden= [-2,2]
y_waarden=[-2,2]

grafiek = plt.plot(x_waarden,y_waarden,linewidth=2)

#ax1.axhline(0,color='k',linewidth=0.5)  #horizontale door center
#ax1.axvline(0,color='k',linewidth=0.5)	#verticale door center

#plt.xlabel('x',loc='upper right')
#ax1.set_xlabel('xlabel', ha='left', va = 'top',labelpad =10 )#fontsize = 9)
ax1.set_xlabel('xlabel', horizontalalignment='right', labelpad =10 ) 
ax1.set_ylabel('ylabel', horizontalalignment='right', labelpad =10 ) 

ax1.spines['left'].set_position('center')
ax1.spines['right'].set_visible(False)
ax1.spines['top'].set_visible(False)
ax1.spines['bottom'].set_position('center')

#ax1.spines['left'].set_smart_bounds(True)
#ax1.spines['bottom'].set_smart_bounds(True)
#ax1.xaxis.set_ticks_position('bottom')
#ax1.yaxis.set_ticks_position('left')

ax1.set_yticks([-2,-1,1,2])

#plt.grid(True, color='k', linestyle='--',dash_capstyle='round',axis='both',linewidth=0.2)µ

plt.grid(True,dashes=[8,3],linewidth=0.5) #sequence of floats (on/off ink in points) or (None, None)

plt.axis('equal') #of plt.axis('scaled'), komt overeen met maple 'scaling = constrained'

#plt.show() werkt enkel als er naar png geschreven wordt
plt.savefig("test.svg")

print("einde programma")