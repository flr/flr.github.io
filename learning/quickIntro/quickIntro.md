---
layout: tutorial
title: A Quick Introduction to FLR
---




# Installing the FLR packages




```r
# install.packages(c('FLCore'), repos='http://flr-project.org/R')
```



# FLCore



```r
library(FLCore)
```

```
## Loading required package: grid
## Loading required package: lattice
## Loading required package: MASS
## FLCore 2.5.0 development version
## 
## 
## Attaching package: 'FLCore'
## 
## The following objects are masked from 'package:base':
## 
##     cbind, rbind
```

```r
library(ggplotFL)
```

```
## Loading required package: ggplot2
## 
## Attaching package: 'ggplot2'
## 
## The following object is masked from 'package:FLCore':
## 
##     %+%
## 
## Loading required package: gridExtra
## Loading required package: reshape2
```



```r
data(ple4)
plot(ple4)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

