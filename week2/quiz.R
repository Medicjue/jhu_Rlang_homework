#### Week 2 Programming Quiz ####
setwd("/Users/Julius/JHU_Rlang_HW/jhu_Rlang_homework/week2")

source("pollutantmean.R")
source("complete.R")
source("corr.R")

## Q1
pollutantmean("specdata", "sulfate", 1:10)
## 4.064128

## Q2
pollutantmean("specdata", "nitrate", 70:72)
## 1.706047

## Q3
pollutantmean("specdata", "sulfate", 34)
## 1.477143

## Q4
pollutantmean("specdata", "nitrate")
## 1.702932

## Q5
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)
## 228 148 124 165 104 460 233

## Q6
cc <- complete("specdata", 54)
print(cc$nobs)
##  219

## Q7
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
## 711 135  74 445 178  73  49 135 687 237

## Q8
cr <- corr("specdata")                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)
## 0.2688  0.1127 -0.0085  0.4586  0.0447

## Q9
cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)
## 254.0000   0.2540   0.0504  -0.1462  -0.1680   0.6143 (?!)

## Q10
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
## 0.0000 -0.0190  0.0419  0.1901