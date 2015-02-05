---
layout: tutorial
title: A Quick Introduction to FLR
date: 2014-05-22 14:32:00 GMT+1
tags: [flcore introduction flquant flstock ple4]
categories: [introduction]
sections: [learning]
---

# FLR in a nutshell

[![FLR packages](/assets/diagrams/flrpkgs.png)](/assets/diagrams/flrpkgs.png)

# Installing the FLR packages

We start by installing the most recent version of the FLR packages. Most FLR packages are currently not available in [CRAN](http://cran.r-project.org), but are distributed through the FLR Project package repository. To install the first of the packages, *FLCore*, please type:


{% highlight r %}
install.packages(c('FLCore'), repos='http://flr-project.org/R')
{% endhighlight %}

# Loading data

{% highlight r %}
url <- "http://flr-project.org/assets/data/ple4_ca/ple4_ca.csv"

ca <- read.csv(url)
{% endhighlight %}

# Creating FLQuant

# Plot

# Operations

# FLStock

# Stock Assessment

# FLSR

# Further info
