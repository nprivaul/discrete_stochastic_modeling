P = [2/3,1/6,1/6; 1/3,1/2,1/6; 1/6,2/3,1/6;]
pi = [11/24,9/24,4/25];theta = 4/11;
for n = 1:11
y(n)=n-1;u(n)=0.25;z(n)=(1-theta)^(n-1);distance(n) = 0;
for k = 1:3;d = mpower(P,n-1)(k,1:3) - pi;dist=0;
for i = 1:3;dist = dist + 0.5*abs(d(i));end
distance(n) = max(distance(n) ,dist);end;end
graphics_toolkit("gnuplot");
plot(y,distance,'-bo','LineWidth',3,y,z,'-ro','LineWidth',3,y,u,'-k', 'LineWidth',5)
legend('d(n)','(1-\theta)^n')
set (gca, 'xtick', 1:10,"fontsize", 12)
set (gca, 'ytick', 0:0.1:1,"fontsize", 12)
grid on
xlabel('Time steps n',"fontsize", 12);ylabel('Distance',"fontsize", 12)
