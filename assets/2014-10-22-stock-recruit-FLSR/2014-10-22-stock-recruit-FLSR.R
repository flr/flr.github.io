
## ----pkgs----------------------------------------------------------------
library(FLCore)
library(ggplotFL)


## ----data----------------------------------------------------------------
data(nsher)


## ----create--------------------------------------------------------------
ssb <- FLQuant(100 + rnorm(31, 0, 12), quant="age",
	dimnames=list(year=1900:1930), units="t")
rec <- FLQuant(20 + c(0, cumsum(sample(rnorm(30, 0, 2)))),
	dimnames=list(year=1901:1931, age="1"), units="1000")

exs <- FLSR(rec=rec, ssb=ssb, name="randFLSR")


## ----reclag--------------------------------------------------------------
# CHECK recruitment lag as age dimension name
dimnames(rec(exs))$age


## ----bevholt-------------------------------------------------------------
# INSPECT bevholt function
#bevholt()


## ----modelc--------------------------------------------------------------
model(nsher) <- bevholt()


## ----modeli--------------------------------------------------------------
# INSPECT object after model change
summary(nsher)

params(nsher)


## ----convert-------------------------------------------------------------
# LOAD FLStock object
data(ple4)

# CONVERT to FLSR
psr4 <- as.FLSR(ple4)

summary(psr4)


## ----convertm------------------------------------------------------------
# ASSIGN model
psr4 <- as.FLSR(ple4, model=ricker)

model(psr4) <- ricker


## ----fmle----------------------------------------------------------------
nsher <- fmle(nsher)


## ----fit-----------------------------------------------------------------
logLik(nsher)

AIC(nsher)
BIC(nsher)


## ----profplot------------------------------------------------------------
profile(nsher)


