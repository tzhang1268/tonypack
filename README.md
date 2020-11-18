
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tonypack

<!-- badges: start -->

<!-- badges: end -->

The goal of tonypack is store Tony’s functions created as part of STAT
545B assignments, and possibly for after the course as well.

## Installation

You can install the released version of tonypack from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("tzhang1268/tonypack")
```

## Example

This is a basic example which shows you how to solve a common problem:

If you have a date and want to determine what is the number of days to
New Years, using the days\_to\_ny() function to calculate it.

``` r
library(tonypack)

## example of using the days_to_ny function
days_to_ny(lubridate::ymd("2020-10-22"))
#> [1] "Calculating..."
#> Days to New Year for the input date(s):  71
```
