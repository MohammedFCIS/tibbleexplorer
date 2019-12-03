
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tibbleexplorer

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## Overview

The goal of tibbleexplorer is to provide an attractive and easy to use
simple shiny UI for `R` tibbles fields exploration.

The application consists of the following modules that gives statistical
information about each type category of features and an overview of the
tibble itself:

  - **Overview** <!-- insert a screenshot here -->
  - **Categorical Features** <!-- insert a screenshot here -->
  - **Numerical Features** <!-- insert a screenshot here -->
  - **DateTime Features** <!-- insert a screenshot here -->
  - **Character Features**
<!-- insert a screenshot here -->

### Overview

<!-- shiny dashboard https://rstudio.github.io/shinydashboard/structure.html#boxes -->

<!-- controls to use https://github.com/dreamRs/shinyWidgets -->

<!-- https://github.com/dcomtois/summarytools -->

<!-- https://boxuancui.github.io/DataExplorer/articles/dataexplorer-intro.html -->

<!-- other charts to use https://www.r-graph-gallery.com/ -->

  - Features and their datatypes:
      - Features Diagram
        <!-- https://christophergandrud.github.io/networkD3/ -->
        <!-- https://www.r-graph-gallery.com/339-circular-dendrogram-with-ggraph.html -->
      - Features statistics overview
  - Tibble statistics:
      - Number of observations
      - Number of categorical features
      - Number of numerical features
      - Number of datetime features
      - Number of character features
  - Charts:
      - Missing data plots

### Categorical Features

  - Charts:
      - Levels Frequency
      - Cross Tabulations (with Chi-square)

### Numerical Features:

  - Charts:
      - Descriptive Statistics \#\# Installation

You can install the released version of tibbleexplorer from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("tibbleexplorer")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("MohammedFCIS/tibbleexplorer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tibbleexplorer)
## basic example code
```
