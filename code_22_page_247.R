x <- unlist (strsplit (gsub ("[^a-z]", "", tolower (text)), ""))
y <- unlist (strsplit (gsub ("[^a,e,i,o,u]", "2", tolower (x)), ""))
z <- as.numeric(noquote(unlist (strsplit (gsub ("[a,e,i,o,u]", "1",y), ""))))
p <- matrix(nrow = 2, ncol = 2, 0)
for (t in 1:(length(z) - 1)) p[z[t], z[t + 1]] <- p[z[t], z[t + 1]] + 1
for (i in 1:2) p[i, ] <- p[i, ] / sum(p[i, ])
