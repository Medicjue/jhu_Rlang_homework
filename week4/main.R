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
r <- rankhospital("TX", "heart failure", 4)
print(r)

rankhospital("MD", "heart attack", "worst")

rankhospital("MN", "heart attack", 5000)

rankhospital("TX", "GG", 4)
