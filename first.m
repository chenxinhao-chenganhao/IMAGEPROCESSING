x = 0:0.01*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
z = 0:0.001:2*pi;
y3 = z.*z;
plot(x,y1,':r');
hold on;
plot (x,y2,'--g');
hold on;
plot (z,y3,'+b');

