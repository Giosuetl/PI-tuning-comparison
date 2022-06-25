s = tf('s');
G= (0.5*exp(-20*s))/(30*s+1)

step(G);
hold on
dt=.05;
t=0:dt:400;
y=step(G,t);
dy=diff(y)/dt;

[m,p]= max(dy)

y1= y(p)
t1=t(p)

plot(t1,y1,'*g')
hold on
t2= 0:1:500;
y2=m*(t2-t1) + y1;
x2=0.5/m +20%se modifica en funcion al tiempo de asentamiento 
hold on
plot(t2,y2,'r')
plot(y2,t1,'or')


