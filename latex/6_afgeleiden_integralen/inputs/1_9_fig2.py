import matplotlib
import matplotlib.pyplot as plt
import numpy as np

#keuze van backend
#matplotlib.use('SVG')   # generate SVG output by default
matplotlib.use('AGG')   # generate png output by default (agg = anti grain)

matplotlib.rcParams.update({'font.size': 22})

fig = plt.figure()
#In order to modify the figure, we need to reference it, so we'll store it to the variable called fig. 
#Then we define ax1 as a subplot on the figure. 

ax1 = plt.subplot2grid((1,1), (0,0))

ax1.spines['top'].set_visible(False)
ax1.spines['right'].set_visible(False)
ax1.spines['bottom'].set_position('center')
ax1.spines['left'].set_position('center')

#We're using subplot2grid here, which is one of two major ways to get subplots. 
#We'll talk more on how these work, but for now, you should see that we have 2 tuples provided with this, (1,1) and (0,0). 
#The 1,1 says this is a 1 x 1 grid. Then 0,0 is us saying the "starting point" for this sub plot will be 0,0.

x_waarden=np.linspace(-3,11,1000)
y_waarden=x_waarden**3-3*x_waarden**2

grafiek = plt.plot(x_waarden,y_waarden,linewidth=2)

#ax1.axhline(0,color='k',linewidth=0.5)  #horizontale door center
#ax1.axvline(0,color='k',linewidth=0.5)	#verticale door center

ax1.set_xlim(left=-6,right=6)
ax1.set_ylim(bottom=-6,top=6)

ax1.set_xticks(np.arange(-4, 4, step=2))
ax1.set_yticks([-4,-2,2,4])
plt.setp(ax1.get_xticklabels(), fontsize=11)
plt.setp(ax1.get_yticklabels(), fontsize=11)

xmin, xmax = ax1.get_xlim()
ymin, ymax = ax1.get_ylim()

# get width and height of axes object to compute
# matching arrowhead length and width
dps = fig.dpi_scale_trans.inverted()
bbox = ax1.get_window_extent().transformed(dps)
width, height = bbox.width, bbox.height

# manual arrowhead width and length
hw = 1./20.*(ymax-ymin)
hl = 1./20.*(xmax-xmin)
lw = 1. # axis line width
ohg = 0.3 # arrow overhang

# compute matching arrowhead length and width
yhw = hw/(ymax-ymin)*(xmax-xmin)* height/width
yhl = hl/(xmax-xmin)*(ymax-ymin)* width/height

ax1.text(xmax,-0.1,'x',horizontalalignment='right',verticalalignment='top')
ax1.text(-1,ymax,'y',horizontalalignment='right',verticalalignment='top')

ax1.text(2,-4,'Minimum in (2,-4)',horizontalalignment='center',verticalalignment='top',fontsize=12)
ax1.text(0,0,'Maximum in (0,0)',horizontalalignment='right',verticalalignment='bottom',fontsize=12)
ax1.text(3,5,'Stijgen',horizontalalignment='right',fontsize=12)
ax1.text(-1.5,-4,'Stijgen',horizontalalignment='right',fontsize=12)
ax1.text(2.2,-2,'Dalen',horizontalalignment='right',fontsize=12)

# draw x and y axis
ax1.arrow(xmin, 0, xmax-xmin, 0., fc='k', ec='k', lw = lw,
         head_width=hw, head_length=hl, overhang = ohg,
         length_includes_head= True, clip_on = False)

ax1.arrow(0, ymin, 0., ymax-ymin, fc='k', ec='k', lw = lw,
         head_width=yhw, head_length=yhl, overhang = ohg,
         length_includes_head= True, clip_on = False)

plt.plot([1.5, 2.5], [-4, -4], 'r-', lw=1)
plt.plot([-0.5, 0.5], [0.1, 0.1], 'r-', lw=1)

#plt.grid(True, color='k', linestyle='--',dash_capstyle='round',axis='both',linewidth=0.2)

#plt.grid(True,dashes=[8,3],linewidth=0.5) #sequence of floats (on/off ink in points) or (None, None)

#plt.axis('equal') #of plt.axis('scaled'), komt overeen met maple 'scaling = constrained'

plt.show() #werkt enkel als er naar png geschreven wordt
plt.savefig("1_9_fig2.svg")
plt.savefig("1_9_fig2.png")

print("einde programma")