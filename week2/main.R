setwd("/Users/Julius/JHU_Rlang_HW/jhu_Rlang_homework/week2")

source("pollutantmean.R")
source("complete.R")

pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)

complete("specdata", 1)

complete("specdata", c(2, 4, 8, 10, 12))

complete("specdata", 30:25)

complete("specdata", 3)