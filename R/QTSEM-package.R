#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

#' QTSEM: A package with a minimum example of Structural Equation Modeling (SEM).
#'
#' This package is an exercise in learning and using Structural Equation Modeling (SEM) in R studio.
#' The package includes a dataset and all the procedures of producing analysis using SEM.
#'
#' @docType package
#' @name QTSEM-package
#' @author Haoran Xu, School of Earth, Environment and Society, McMaster University \email{xu976@@mcmaster.ca}
#' @references \url{https://github.com/Horan517/QTSEM}
#'
#' Travel Behavior and Satisfaction dataset for tourists and residents on Qinghai-Tibet Plateau
#'
#' A dataset which has 813 observations of 43 variables, containing information about toursits' and residents'
#' satisfaction and travel behavior on Qinghai-Tibet Plateau.
#'
#' @format A data frame with 813 rows of 43 variables:
#' \describe{
#'   \item{gd}{Gender as a binary variable}
#'   \item{age}{Age as an categorical variable, with <18 years old as 1, 18-30 years old as 2, 31-45 years old as 3, 46-60 years old as 4, >60 years old as 5}
#'   \item{car1}{If people traveled in Qinghai-Tibet Plateau by car}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name QTSurveyRsults
#' @usage data(SurveyResults)
#' @source The sources of these data are collected with Dr. Huaxiong Jiang, Kaifei Guo and Lili Zhang on Qinghai-Tibet Plateau during July to August in 2022.
#'  data(SurveyResults)
#'  gd <- SurveyResults$gd
