install.packages("plot3D"); library(plot3D)
N=1000;dx=10/sqrt(N); X <- matrix(0, 3, 10*N)
X[1,]=2*rbinom(10*N, 1, 0.5)-1; X[2,]=2*rbinom(10*N, 1, 0.5)-1; X[3,]=2*rbinom(10*N, 1, 0.5)-1
U=round(runif(10*N, min=1, max=3))
X[1,]=dx*X[1,]*(U==1); X[2,]=dx*X[2,]*(U==2);X[3,]=dx*X[3,]*(U==3)
X[1,0]=0;X[2,0]=0;X[3,0]=0;
lines3D(cumsum(X[1,]),cumsum(X[2,]),cumsum(X[3,]), col = 4, add = FALSE, lwd=1)
