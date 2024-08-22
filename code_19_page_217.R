I <- matrix(data=1,nrow=5,ncol=5); Pe<-epsilon*I/5+(1-epsilon)*P
MCe <-new("markovchain",transitionMatrix=Pe,states=c("a","b","c","d","e"))
graphe <- as(MCe, "igraph")
plot(graphe,vertex.size=50,edge.label.cex=2,edge.label=sprintf("%1.2f", E(graphe)$prob),edge.color='black', vertex.color='dodgerblue',vertex.label.cex=3)
