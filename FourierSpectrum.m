T=6;
f0=1/T;
w0=2*pi*f0;
t=-1.5*T:T/1000:1.5*T;
N=[10,50]
c0=0;
x=c0*ones(1,length(t));
i=0;
while(i <2)
for n=1:N[i],
    cn=-4*j/n/pi*sin(pi*n/6)*sin(n*pi/2)*exp(-j*n*pi/3);
    c_n=conj(cn);
    x=x+cn*exp(j*n*w0*t)+c_n*exp(-j*n*w0*t);
end
subplot(2,2,i+1)
plot(t,x)
i=i+1;
end
title(['Grafik 1 N=10 / Grafik 2 N=50'])
