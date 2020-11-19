
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Vignette - tonypack

<!-- badges: start -->

<!-- badges: end -->

The goal of tonypack is store Tony’s functions created as part of STAT
545B assignments, and possibly for after the course as well.

## Installation

You can install the released version of tonypack from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("tzhang1268/tonypack")
#> Downloading GitHub repo tzhang1268/tonypack@HEAD
#> lubridate (NA -> 1.7.9.2) [CRAN]
#> Installing 1 packages: lubridate
#> Installing package into 'C:/Users/TONY/R/win-library/4.0'
#> (as 'lib' is unspecified)
#> package 'lubridate' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\TONY\AppData\Local\Temp\Rtmp4aLNlS\downloaded_packages
#>          checking for file 'C:\Users\TONY\AppData\Local\Temp\Rtmp4aLNlS\remotes2f447f0c21a8\tzhang1268-tonypack-5e26cd1/DESCRIPTION' ...  v  checking for file 'C:\Users\TONY\AppData\Local\Temp\Rtmp4aLNlS\remotes2f447f0c21a8\tzhang1268-tonypack-5e26cd1/DESCRIPTION'
#>       -  preparing 'tonypack':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>       -  checking for empty or unneeded directories
#>       -  building 'tonypack_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/TONY/R/win-library/4.0'
#> (as 'lib' is unspecified)
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

## Details on the development of each component of the R package

Prior to any steps, first we need to add the devtools library.

``` r
library(devtools)
#> Warning: package 'devtools' was built under R version 4.0.3
#> Loading required package: usethis
#> Warning: package 'usethis' was built under R version 4.0.3
```

### Creating the basic R package folder directory

This code section creates the R package folder directory at the
specified location. All of the basic necessary files and folders within
automatically.

``` r
create_package("C:/Users/TONY/Desktop/tonypack")
#> √ Setting active project to 'C:/Users/TONY/Desktop/tonypack'
#> √ Leaving 'DESCRIPTION' unchanged
#> Package: tonypack
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * First Last <first.last@example.com> [aut, cre] (YOUR-ORCID-ID)
#> Description: What the package does (one paragraph).
#> License: `use_mit_license()`, `use_gpl3_license()` or friends to pick a
#>     license
#> Encoding: UTF-8
#> LazyData: true
#> Roxygen: list(markdown = TRUE)
#> RoxygenNote: 7.1.1
#> √ Leaving 'NAMESPACE' unchanged
#> √ Setting active project to '<no active project>'
```

### Creating a git reposition locally

This code section set up the git repository locally on the computer. It
will require an additional confirmation to confirm the initial commit.

``` r
use_git()
#> √ Setting active project to 'C:/Users/TONY/Desktop/tonypack'
```

### Creating functions in the R function directory with appropriate function documentation

The following code block created the file which contains my function
days\_to\_ny(). The code can then be added within the R file.

``` r
use_r("days_to_ny")
#> * Edit 'R/days_to_ny.R'
#> * Call `use_test()` to create a matching test file
```

The roxygen2 library need to be added to create function documentation.
Then the basic roxygen2 documentation skeleton can be added via Rstudio
user interface. The roxygen2 skeleton is then manually modified.

``` r
library(roxygen2)
```

The function documentations need to be rendered using the following code
block. This information can then be accessed by the user when they use
the ?function command.

``` r
document()
#> Updating tonypack documentation
#> Loading tonypack
#> Writing NAMESPACE
#> Writing NAMESPACE
```

### Updating the basic documentation and creating the license

The DESCRIPTION file created by create\_package() earlier contains the
basic information about the R package. The personal information and
package information within need to be manually updated. Creating the
license uses the following code, which creates license files in the R
package.

``` r
use_mit_license("Tony Zhang")
```

### Creating a test directory

The following code block creates a folder directory for function tests.

``` r
use_testthat()
#> * Call `use_test()` to initialize a basic test file and open it for editing.
```

The following code creates an individual test file for a function. The
testing code can then be added into the R file.

``` r
use_test("days_to_ny")
#> * Edit 'tests/testthat/test-days_to_ny.R'
```

### Creating additional documentation and useful information

This code block creates the README file, which contains overall package
information and higher level details.

``` r
use_readme_rmd()
#> √ Leaving 'README.Rmd' unchanged
```

Once the README is updated, use the following code to build it in the
package.

``` r
# Note: I commented this part out because it was not allowing the knit to complete properly. 
# build_readme()
```

Vignettes can be created using the following code block.

``` r
use_vignette("days_to_ny")
#> √ Leaving 'vignettes/days_to_ny.Rmd' unchanged
```

Once a vignette is updated, use the following code to build it in the
package.

``` r
build_vignettes()
#> Building tonypack vignettes
#> --- re-building 'days_to_ny.Rmd' using rmarkdown
#> --- finished re-building 'days_to_ny.Rmd'
#> 
#> Moving days_to_ny.html, days_to_ny.R to doc/
#> Copying days_to_ny.Rmd to doc/
#> Building vignette index
```
