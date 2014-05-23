---
layout: page
title: FLR Packages
---

# [FLCore](http://flr-project.org/FLCore)

- DESCRIPTION
- Author:
- Maintainer:
- Current version:

- **Repository**: <http://flr.github.io/FLCore/>
- Build status: [![Build Status](https://travis-ci.org/flr/FLCore.svg?branch=master)](https://travis-ci.org/flr/ggplotFL)

- Latest release: <https://github.com/flr/FLCore/releases/latest>

# ggplotFL

To install this package, start R and enter:

	install.packages("ggplotFL", repos="http://flr-project.org/R")

To cite this package in a publication type:

  citation("ggplotFL")

$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$
