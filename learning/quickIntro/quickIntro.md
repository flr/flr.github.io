---
layout: tutorial
title: A Quick Introduction to FLR
---




# Installing the FLR packages


{% highlight r %}
# install.packages(c('FLCore'), repos='http://flr-project.org/R')
{% endhighlight %}

# FLCore


{% highlight r %}
library(FLCore)
{% endhighlight %}



{% highlight text %}
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
{% endhighlight %}



{% highlight r %}
library(ggplotFL)
{% endhighlight %}



{% highlight text %}
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
{% endhighlight %}



{% highlight r %}
data(ple4)
{% endhighlight %}



{% highlight r %}
plot(ple4)
{% endhighlight %}

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

