clickstreams <- c("User20,B10,B13,A25,B20,A02",
               "User304,A02,B04,C11",
               "User555,B10,C15,B13,C13",
               "User370,A02,C13,D12,C13",
               "User808,C20,B10,C10")
			   
csf <- tempfile()
writeLines(clickstreams, csf)
cls <- readClickstreams(csf, header = TRUE)
mc <- fitMarkovChain(cls)
startPattern <- new("Pattern", sequence = c("B10", "B13"))
predict(mc, startPattern)
plot(mc)


