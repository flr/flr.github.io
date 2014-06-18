---
  layout: post
  title: Loading data from a VPASuite file into FLR
  date: 2014-05-22 14:32:00 GMT+1
  post_author: Iago Mosqueira
  tags: [vpa load]
---


# Getting started


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
plot(9)
{% endhighlight %}

![plot of chunk unnamed-chunk-2](2014-05-22-loading-data-vpa/figure/unnamed-chunk-2.png) 


Checking the working directory

{% highlight r %}
	getwd()
{% endhighlight %}

Reset the working directory, using `setwd("directory name")`. 

Case is important
Use // or \ for separating folders and directories in Windows 


# readVPAFile()
 The Lowestoft VPA format uses lots of text files, with a single index file.
 readVPAFile() reads in a single file (e.g. fishing mortality, catch numbers etc.)
 Here we read in the catches at age of herring in VIa. This is in the file 'canum.txt'
 Look at this raw data file in a text editor
 Read in the file using readVPAFile("name_of_file") (include the file name extension, e.g. .txt)
catch.n <- readVPAFile("Data/her-irlw/canum.txt")
 Gives you an FLQuant 
catch.n


