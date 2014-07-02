# create.R - DESC
# create.R

# Copyright 2003-2014 FLR Team. Distributed under the GPL 2 or later
# Maintainer: Iago Mosqueira, JRC
# Soundtrack:
# Notes:

library(FLCore)

data(ple4)

ca <- as.data.frame(catch.n(ple4))

ca<-ca[,c(1,2,7)]

write.csv(ca, file="ple4_ca.csv", row.names=FALSE, quote=FALSE)
