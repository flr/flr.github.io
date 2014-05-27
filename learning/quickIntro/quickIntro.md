---
layout: tutorial
title: A Quick Introduction to FLR
---

Welcome to FLR. This is going to be a short run through some of the basic elements of the main FLR packages. For further learning material, please visit the learning page or the sites for [each individual package]({{ site.baseurl }}{{pkgs/pkgs.html}}).




# Installing the FLR packages


{% highlight r %}
# install.packages(c('FLCore'), repos='http://flr-project.org/R')
{% endhighlight %}

# FLCore


{% highlight r %}
library(FLCore)
library(ggplotFL)
data(ple4)
{% endhighlight %}



{% highlight r %}
plot(ple4)
{% endhighlight %}

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

