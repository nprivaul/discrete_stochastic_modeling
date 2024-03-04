text = readChar("text_file.txt",nchars=10000)
x <- unlist (strsplit (gsub ("[^a-z]", "-", tolower (text)), ""))
P <- matrix(nrow = 27, ncol = 27, 0,dimnames = list(c("-", letters),c("-", letters)))
for (t in 1:(length(x) - 1)) P[x[t], x[t + 1]] <- P[x[t], x[t + 1]] + 1
for (i in 1:27) P[i, ] <- P[i, ] / sum(P[i, ])
P[1:5,1:5]

