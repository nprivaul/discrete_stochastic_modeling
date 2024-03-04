x=seq(0,1,0.01)
f<-function(x){return (x^(sum(y))*(1-x)^(N-sum(y))/beta(sum(y)+1,N-sum(y)+1))}
par(mar = c(4.3, 2, 2, 3))
plot(x,f(x), lwd=2,col="red")
densityplot(e$theta, xlim=c(0,1),lwd=2)
lines(x,f(x),lwd=2, xlim=c(0,1),col="red")
