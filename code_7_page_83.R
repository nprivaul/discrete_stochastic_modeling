nsim <- 10000;N=1000000; T<-2.0; t <- 0:(N-1); dt <- 1;
for (i in 1:nsim){Z <- 2*(rbinom(N,1,0.5)-0.5);X <- c(0,1,N+1);X[1]=0;
for (j in 2:N){X[j]=X[j-1]+Z[j]};k=2;
plot(t[1:k], X[1:k], xlab = "t", ylab = "", type = "o", xlim=c(0,10),ylim = c
(-10,10), col = "blue",main=paste(""), xaxs="i", xaxt="n",lwd=3,yaxp=c(-10,10,10));
axis(side=1, at=c(0:j), c(0:j));axis(side=1, pos=0, at=c(0:j), c(0:j))
readline(prompt = "Pause. Press <Enter>...");
k=3;while (X[k-1]!=0 && k<12) {plot(t[1:k], X[1:k], xlab = "t", ylab = "",
type = "o", xlim=c(0,10),ylim = c(-10,10), col = "blue",main=paste(""), xaxs="i",
xaxt="n",lwd=3,yaxp=c(-10,10,10))
if (X[k]==0) {text(7,7,paste(k-1),cex=5)} else axis(side=1, at=c(0:j), c(0:j));
axis(side=1, pos=0, at=c(0:j), c(0:j));
readline(prompt = "Pause. Press <Enter>...");k=k+1;};}
