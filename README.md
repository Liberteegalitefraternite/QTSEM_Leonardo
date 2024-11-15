
<!-- README.md is generated from README.Rmd. Please edit that file -->

# QTSEM

<!-- badges: start -->
<!-- badges: end -->

The goal of QTSEM is to present a Structural Equation Modeling (SEM)
example in R. It uses a travel behavior and collected during July to
August on Qinghai-Tibet Plateau as the example dataset.

## Installation

You can install the development version of QTSEM from GitHub with:

``` r
if(!require(remotes)){
    install.packages("remotes")
    library(remotes)
}
remotes::install_github("Horan517/QTSEM")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(QTSEM)
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(SurveyResults)
#>        id              gd              age             rsd1     
#>  Min.   :  5.0   Min.   :0.0000   Min.   :1.000   Min.   :0.00  
#>  1st Qu.:211.0   1st Qu.:0.0000   1st Qu.:2.000   1st Qu.:0.00  
#>  Median :420.0   Median :0.0000   Median :2.000   Median :0.00  
#>  Mean   :419.9   Mean   :0.4994   Mean   :2.514   Mean   :0.31  
#>  3rd Qu.:630.0   3rd Qu.:1.0000   3rd Qu.:3.000   3rd Qu.:1.00  
#>  Max.   :834.0   Max.   :1.0000   Max.   :5.000   Max.   :1.00  
#>       icm             edu             pf1            hhd_sz1     
#>  Min.   :1.000   Min.   :1.000   Min.   :0.0000   Min.   :1.000  
#>  1st Qu.:1.000   1st Qu.:3.000   1st Qu.:0.0000   1st Qu.:2.000  
#>  Median :3.000   Median :3.000   Median :0.0000   Median :2.000  
#>  Mean   :2.615   Mean   :2.835   Mean   :0.3124   Mean   :2.638  
#>  3rd Qu.:3.000   3rd Qu.:3.000   3rd Qu.:1.0000   3rd Qu.:3.000  
#>  Max.   :5.000   Max.   :4.000   Max.   :1.0000   Max.   :5.000  
#>     dri_lic            car1            tsp1             tsp2       
#>  Min.   :0.0000   Min.   :0.000   Min.   :0.0000   Min.   :0.0000  
#>  1st Qu.:0.0000   1st Qu.:1.000   1st Qu.:0.0000   1st Qu.:0.0000  
#>  Median :1.0000   Median :1.000   Median :0.0000   Median :0.0000  
#>  Mean   :0.6802   Mean   :1.289   Mean   :0.4157   Mean   :0.2829  
#>  3rd Qu.:1.0000   3rd Qu.:2.000   3rd Qu.:1.0000   3rd Qu.:1.0000  
#>  Max.   :1.0000   Max.   :3.000   Max.   :1.0000   Max.   :1.0000  
#>       tsp3             tsp4              tsp5            tsp_auto     
#>  Min.   :0.0000   Min.   :0.00000   Min.   :0.00000   Min.   :0.0000  
#>  1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.0000  
#>  Median :0.0000   Median :0.00000   Median :0.00000   Median :1.0000  
#>  Mean   :0.3247   Mean   :0.01353   Mean   :0.06765   Mean   :0.6913  
#>  3rd Qu.:1.0000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:1.0000  
#>  Max.   :1.0000   Max.   :1.00000   Max.   :1.00000   Max.   :1.0000  
#>      frqcy          a_tra_t        a_tra_t1        a_tra_t2     
#>  Min.   :1.000   Min.   :1.00   Min.   :1.000   Min.   :0.0000  
#>  1st Qu.:1.000   1st Qu.:2.00   1st Qu.:2.000   1st Qu.:0.0000  
#>  Median :1.000   Median :3.00   Median :3.000   Median :1.0000  
#>  Mean   :2.169   Mean   :3.32   Mean   :2.633   Mean   :0.6937  
#>  3rd Qu.:4.000   3rd Qu.:4.00   3rd Qu.:3.000   3rd Qu.:1.0000  
#>  Max.   :5.000   Max.   :5.00   Max.   :3.000   Max.   :1.0000  
#>     a_tra_t3         a_tra_d         a_tra_d1        a_tra_d2     
#>  Min.   :0.0000   Min.   :1.000   Min.   :1.000   Min.   :0.0000  
#>  1st Qu.:0.0000   1st Qu.:2.000   1st Qu.:1.000   1st Qu.:0.0000  
#>  Median :0.0000   Median :3.000   Median :2.000   Median :0.0000  
#>  Mean   :0.2128   Mean   :3.186   Mean   :1.892   Mean   :0.4822  
#>  3rd Qu.:0.0000   3rd Qu.:5.000   3rd Qu.:3.000   3rd Qu.:1.0000  
#>  Max.   :1.0000   Max.   :5.000   Max.   :3.000   Max.   :1.0000  
#>     a_tra_d3           exp             sati            prss      
#>  Min.   :0.0000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
#>  1st Qu.:0.0000   1st Qu.:4.000   1st Qu.:4.000   1st Qu.:4.000  
#>  Median :0.0000   Median :4.000   Median :5.000   Median :4.000  
#>  Mean   :0.2927   Mean   :4.316   Mean   :4.396   Mean   :4.335  
#>  3rd Qu.:1.0000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000  
#>  Max.   :1.0000   Max.   :5.000   Max.   :5.000   Max.   :5.000  
#>       hlt           ts_envi1        ts_envi2        ts_envi3       ts_envi4    
#>  Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.00   Min.   :1.000  
#>  1st Qu.:4.000   1st Qu.:4.000   1st Qu.:4.000   1st Qu.:4.00   1st Qu.:4.000  
#>  Median :5.000   Median :5.000   Median :4.000   Median :4.00   Median :4.000  
#>  Mean   :4.373   Mean   :4.555   Mean   :4.159   Mean   :4.26   Mean   :4.327  
#>  3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.00   3rd Qu.:5.000  
#>  Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :5.00   Max.   :5.000  
#>   ts_envi1234      ts_envi14        ts_envi5        ts_envi6    
#>  Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
#>  1st Qu.:4.000   1st Qu.:4.000   1st Qu.:4.000   1st Qu.:3.000  
#>  Median :4.250   Median :4.500   Median :4.000   Median :4.000  
#>  Mean   :4.325   Mean   :4.441   Mean   :4.113   Mean   :3.943  
#>  3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000   3rd Qu.:5.000  
#>  Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :5.000  
#>     r_envi1         r_envi2         r_envi12        r_envi3     
#>  Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
#>  1st Qu.:3.000   1st Qu.:3.000   1st Qu.:2.500   1st Qu.:3.000  
#>  Median :3.000   Median :3.000   Median :3.000   Median :3.000  
#>  Mean   :3.234   Mean   :3.194   Mean   :3.214   Mean   :3.343  
#>  3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.:4.000  
#>  Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :5.000  
#>     r_envi4         r_envi5         r_envi45    
#>  Min.   :1.000   Min.   :1.000   Min.   :1.000  
#>  1st Qu.:3.000   1st Qu.:2.000   1st Qu.:2.500  
#>  Median :3.000   Median :3.000   Median :3.000  
#>  Mean   :3.261   Mean   :3.085   Mean   :3.173  
#>  3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.:4.000  
#>  Max.   :5.000   Max.   :5.000   Max.   :5.000
```
