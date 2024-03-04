a=-10;b=-10;sigma=1; N=200; t <- 0:N; dt <- 1.0/N; nsim=20;
X <- matrix(rnorm( nsim * N, 0, sqrt(dt)), nsim, N); Y <- matrix(0, nsim, N+1)
for (i in 1:nsim){Y[i,1]=2; for (j in 2:N){Y[i,j] = Y[i,j-1]+b*dt +a*Y[i,j-1]*dt +sigma*X[i,j];}}; H<-hist(Y[,N],plot=FALSE); dev.new(width=16,height=7);
layout(matrix(c(1,2), nrow =1, byrow = TRUE));par(mar=c(2,2,2,0), oma = c(2, 2, 2, 2))
plot(t*dt, Y[1, ], xlab = "", ylab = "", type = "l", ylim = c(-2, 2), col = 0, xaxs='i',yaxs='i',las=1, cex.axis=1.6)
for (i in 1:nsim){lines(t*dt, Y[i, ], type = "l", ylim = c(-2, 2), col = i,lwd=2)}
for (i in 1:nsim){points(0.999, Y[i,N], pch=1, lwd = 5, col = i)}
x <- seq(-2,2, length=100); px <- dnorm(x,-b/a,sqrt(sigma**2/2/(-a)));par(mar = c(2,2,2,2))
plot(NULL , xlab="", ylab="", xlim = c(0, max(px,H$density)), ylim = c(-2,2),axes=F)
rect(0, H$breaks[1:(length(H$breaks) - 1)], col=rainbow(20,start=0.08,end=0.6), H$density, H$breaks[2:length(H$breaks)]); lines(px,x, lty=1, col="black",lwd=2)
