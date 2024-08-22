install.packages("devtools"); library(devtools)
devtools::install_github('spedygiorgio/markovchain') # Choose option 2 - CRAN packages only
install.packages("igraph"); install.packages("markovchain")
library(igraph);library(markovchain)
MC <-new("markovchain",transitionMatrix=P,states=c("-", letters))
graph <- as(MC, "igraph")
plot(graph,edge.label.cex=1,edge.label=sprintf("%1.2f", E(graph)$prob),edge.color='black', vertex.color='dodgerblue',vertex.label.cex=1)
cat(markovchainSequence(n = 100, markovchain = MC, t0 = "a", include.t0 = TRUE),"\n" )
