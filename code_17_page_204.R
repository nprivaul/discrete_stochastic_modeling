M=3;p=sqrt(0.75);x=array(M+1); for(l in seq(1,M+2)) { x[l]=l-1; }
z=array(M+2);z <- sample(c(-1,1), M+2, replace = TRUE, prob=c(0.3,0.7))
z[1]=1;z[M+2]=1;dev.new(width=6, height=4);for(ll in seq(0,100)) {par(mar = c(0,0,0,0));
plot(x,z,type="p",xlab="",ylab="",xlim=c(-5,M+1+5),ylim=c(-1.3,1), yaxt="n",xaxt="n",xaxs="i", col="black",cex=1.2,main="",pch=20,bty="n")
k <- 1+ceiling(runif(1, min=0, max=M))
for(l in seq(1,M+2)) {
if (l!=k) segments(x0=x[l], y0=0, y1=z[l], lwd=2) else segments(x0=x[k], y0=0, y1=z[l], lwd=3,col="purple")}
lines(c(k-1),c(z[k]),type="p",xlab="",ylab="",xlim=c(-5,M+1+5),ylim=c(-1.3,1), yaxt="n",xaxt="n", xaxs="i",col="purple",cex=1.5,main="",pch=20,bty="n")
zz=z[k];segments(x0=x[k], y0=0, y1=z[k], lwd=3,col="purple")
if (z[k-1]!=z[k+1]) z[k]=sample(c(-1,1), 1,prob=c(0.5,0.5))
if (z[k-1]==1 && z[k+1]==1) z[k]=sample(c(-1,1), 1, prob=c(1-p,p))
if (z[k-1]==-1 && z[k+1]==-1) z[k]=sample(c(-1,1), 1, prob=c(p,1-p))
axis(1,pos=1,at=seq(0,M+1,M+1),outer=TRUE,labels=FALSE,padj=-4,tcl=0.5) 
axis(1,pos=0,at=seq(0,M+1,1),outer=TRUE) 
axis(1,pos=-1,at=seq(0,M+1,M+1),outer=TRUE) 
text(0.26,-1.13,bquote(n == .(ll)));text(-0.12,1,"+1"); text(-0.09,-1,"-1") 
readline(prompt = "Pause. Press <Enter> to continue...") 
segments(x0=x[k], y0=0, y1=zz, lwd=3,col="white")
lines(c(k-1),c(zz),type="p",xlab="",ylab="",xlim=c(-5,M+1+5),ylim=c(-1.3,1), yaxt="n",xaxt="n", xaxs="i",col="white",cex=1.5,main="",pch=20,bty="n")
segments(x0=x[k], y0=0, y1=z[k], lwd=3,col="blue")
lines(c(k-1),c(z[k]),type="p",xlab="",ylab="",xlim=c(-5,M+1+5),ylim=c(-1.3,1), yaxt="n",xaxt="n", xaxs="i",col="blue",cex=1.5,main="",pch=20,bty="n")
readline(prompt = "Pause. Press <Enter> to continue...")}
