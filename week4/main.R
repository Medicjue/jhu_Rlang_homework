#### JHU Week 4 Homework ####

getwd()
setwd("/Users/Julius/JHU_Rlang_HW/jhu_Rlang_homework/week4/")

source("best.R")

best("TX", "heart attack")

best("TX", "heart failure")

best("MD", "heart attack")

best("MD", "pneumonia")

best("BB", "heart attack")

best("NY", "hert attack")

source("rankhospital.R")
rankhospital("TX", "heart failure", 4)

rankhospital("MD", "heart attack", "worst")

rankhospital("MN", "heart attack", 5000)

rankhospital("TX", "GG", 4)

source("rankall.R")
head(rankall("heart attack", 20), 10)
