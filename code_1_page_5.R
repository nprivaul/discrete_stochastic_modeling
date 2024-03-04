install.packages("devtools"); library(devtools)
devtools::install_github('spedygiorgio/markovchain') # Choose option 2 - CRAN packages only
install.packages("igraph"); install.packages("markovchain")
library(igraph); library(markovchain)
P<-matrix(c(1,0,0,0,1./3,0,1./3,1./3,1./3,1./3,0,1./3,0,0,0,1),nrow=4, byrow=TRUE)
MC <-new("markovchain",transitionMatrix=P,states=c("0","1","2","3"))
graph <- as(MC, "igraph")
plot(graph,edge.label.cex=0.8,edge.label=sprintf("%1.2f", E(graph)$prob), edge.color='black', vertex.color='dodgerblue', vertex.label.cex=0.8)
