import matplotlib
import matplotlib.pyplot as plt
import numpy as np

#keuze van backend
#matplotlib.use('SVG')   # generate SVG output by default
matplotlib.use('AGG')   # generate png output by default (agg = anti grain)

matplotlib.rcParams.update({'font.size': 22})

fig = plt.figure()

ax1 = plt.subplot2grid((1,1), (0,0))

ax1.spines['top'].set_visible(False)
ax1.spines['right'].set_visible(False)
ax1.spines['left'].set_position('center')
ax1.spines['bottom'].set_position('zero')

ax1.set_xlim(left=-2,right=2)
ax1.set_ylim(bottom=-2,top=2)

#We're using subplot2grid here, which is one of two major ways to get subplots. 
#We'll talk more on how these work, but for now, you should see that we have 2 tuples provided with this, (1,1) and (0,0). 
#The 1,1 says this is a 1 x 1 grid. Then 0,0 is us saying the "starting point" for this sub plot will be 0,0.

theta = 30*np.pi/180;

V = np.array([[0,1],[1,0],[np.cos(theta),np.sin(theta)],[-np.sin(theta),np.cos(theta)]])
origin = [0], [0] # origin point

plt.quiver(*origin, V[:,0], V[:,1],angles='xy', scale_units='xy', scale=1)
plt.show()

ax1.set_xticks([])
ax1.set_yticks([])

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

ax1.text(xmax,0.1,'x',horizontalalignment='right',verticalalignment='bottom')
ax1.text(-0.5,ymax,'y',verticalalignment='top')

ax1.text(0,0,'O',horizontalalignment='right',verticalalignment='top')
ax1.text(0,1,'$\overline{e}_y$',horizontalalignment='right',verticalalignment='top')
ax1.text(1,0,'$\overline{e}_x$',horizontalalignment='left',verticalalignment='bottom')
ax1.text(V[2,0],V[2,1],'$\overline{e}_u$',horizontalalignment='left',verticalalignment='bottom')
ax1.text(V[3,0],V[3,1],'$\overline{e}_v$',horizontalalignment='right',verticalalignment='top')

# draw x and y axis
ax1.arrow(xmin, 0, xmax-xmin, 0., fc='k', ec='k', lw = lw,
         head_width=hw, head_length=hl, overhang = ohg,
         length_includes_head= True, clip_on = False)

ax1.arrow(0, ymin, 0., ymax-ymin, fc='k', ec='k', lw = lw,
         head_width=yhw, head_length=yhl, overhang = ohg,
         length_includes_head= True, clip_on = False)


plt.show() #werkt enkel als er naar png geschreven wordt
plt.savefig("2_inl_fig1.svg")
plt.savefig("2_inl_fig1.png")

print("einde programma")
