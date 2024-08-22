data <- unlist (strsplit (gsub ("[^a-z]", "_", tolower (text)), ""))
barplot(col = rainbow(30), table(data), cex.names=0.7)
