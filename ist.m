t = 0:0.01:10
A =5
y = A*sin(2*pi*t)
plot(t,y)
z = A*cos(2*pi*t)
plot(t,z)
y=y.*y
z=z.*z
c=y+z
plot(t,c)

