
from pylab import *

from setplot import setplot
plotdata = setplot()
plotdata.outdir = '_output'
g123 = plotdata.getgauge(123)

figure()
t = g123.t / 3600.  # convert to hours
eta = g123.q[3,:]   # eta = h + B (depth plus bathymetry)
plot(t,eta)
xlim(3,8)
xlabel('Hours since earthquake')
ylabel('meters')
title('Sea surface elevation at gauge 123')

fname = 'gauge123_surface.png'
savefig(fname, bbox_inches='tight') # remove excess white space
print "Created ",fname

figure()
h = g123.q[0,:]       # water depth
u = g123.q[1,:] / h   # u = east-west velocity
v = g123.q[2,:] / h   # v = north-south velocity
plot(t,u,'g',label='u')
plot(t,v,'r',label='v')
legend()
title('Velocities at gauge 123')
xlabel('Hours since earthquake')
ylabel('meters per second')

fname = 'gauge123_velocities.png'
savefig(fname, bbox_inches='tight') # remove excess white space
print "Created ",fname
