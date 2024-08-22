nsim <- 10000; N=1000000; T<-2.0; t <- 0:(N-1); dt <- 1; mean=0.0;
for (i in 1:nsim){signal=0;colour="blue";
Z <- 2*(rbinom(N,1,0.5)-0.5);X <- c(1,N+1);X[1]=0;j=1;
while (j<N && signal==0){j=j+1;X[j]=X[j-1]+Z[j];if (X[j]==0) {signal=1;mean=mean+j-1}}
plot(t[1:j], X[1:j], xlab = "t", ylab = "", type = "p", ylim = c(min(X[1:j])-max(X
[1:j]),-min(X[1:j])+max(X[1:j])), col = colour,main=paste("Time=",j-1,", Mean=
",mean,"/",i,"=",round(mean/i, digits=1)), xaxs="i", xaxt="n",lwd=3)
lines(t[1:j], X[1:j], type = "l",col="blue",lwd=2)
axis(side=1, at=c(0:j), c(0:j));axis(side=1, pos=0, at=c(0:j), c(0:j))
text((j-1)/2,0.5,paste(j-1),cex=5);
readline(prompt = "Pause. Press <Enter>...")}
