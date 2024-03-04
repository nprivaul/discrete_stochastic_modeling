install.packages("igraph"); install.packages("markovchain")
library(igraph); library(markovchain)
P<-matrix(c(0,0,0,0.5,0.5,0,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0),nrow=5, byrow=TRUE)
MC <-new("markovchain",transitionMatrix=P,states=c("a","b","c","d","e"))
graph <- as(MC, "igraph"); epsilon=0.03
plot(graph,vertex.size=50,edge.label.cex=2,edge.label=sprintf("%1.2f", E(graph)$prob), edge.color='black', vertex.color='dodgerblue', vertex.label.cex=3)
page_rank(graph,damping=1-epsilon)
