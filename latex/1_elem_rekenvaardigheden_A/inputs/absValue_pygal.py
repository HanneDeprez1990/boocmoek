import pygal

#from pygal.style import Style
from pygal.style import DefaultStyle
#custom_style = Style(
#  background='white',
#  plot_background='white',
##  foreground='#53E89B',
#  foreground_strong='#53A0E8',
#  foreground_subtle='#630C0D',
#  opacity='.6',
#  opacity_hover='.9',
#  transition='400ms ease-in',
#  colors=('#E853A0', '#E8537A', '#E95355', '#E87653', '#E89B53'))



#import cairosvg #werkt niet goed op windows, nodig voor het renderen naar png
from math import cos
#xy_chart = pygal.XY()
#xy_chart.title = 'XY Cosinus'#xy_chart.add('x = cos(y)', [(cos(x / 10.), x / 10.) for x in range(-50, 50, 5)])
#xy_chart.add('y = cos(x)', [(x / 10., cos(x / 10.)) for x in range(-50, 50, 5)])

#xy_chart.add(
#'f(x) = x', 
#[(cos(x / 10.), x / 10.) for x in range(-50, 50, 5)]
#)
titel_grafiek = 'f(x)=x'

lijst = [(x / 10., x / 10.) for x in range(-50, 50, 5)]
grafiek = pygal.XY(style=DefaultStyle)
grafiek.add(titel_grafiek, lijst)

grafiek.render_to_file('absValue.svg')


#xy_chart.add('x = 1',  [(1, -5), (1, 5)])
#xy_chart.add('x = -1', [(-1, -5), (-1, 5)])
#xy_chart.add('y = 1',  [(-5, 1), (5, 1)])
#xy_chart.add('y = -1', [(-5, -1), (5, -1)])
#xy_chart.render() # Return the svg as bytes
#xy_chart.render_to_file('absValue.svg')  
#xy_chart.render_to_png('testfiguur.png') 
print("einde programma")