f = @(t,y) cos(t.^2).*exp(-t);
y0 = 0;
t = 0 : 0.1 : 5;
y = heunn(f,y0,t);
plot(t,y,'r');
hold on ;
f2 = @(y,t) cos(t.^2).*exp(-t);
[yexa o oo] = lsode(f2,y0,t);
plot(t,yexa,'o')


