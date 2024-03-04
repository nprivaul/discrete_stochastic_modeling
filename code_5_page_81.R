N=1000;dx=10/sqrt(N)
X <- 2*rbinom(100*N, 1, 0.5)-1
Y <- 2*rbinom(100*N, 1, 0.5)-1
Z <- rbinom(100*N, 1, 0.5)
X[1]=0;Y[1]=0; X=dx*X*Z; Y=dx*Y*(1-Z); 
plot(cumsum(X),cumsum(Y),xlab="",ylab="",type ="l",ylim=c(-10,10),xlim=c(-10,10),col = 4,lwd=2)
abline(h=0);abline(v=0)
