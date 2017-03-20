## rankhospital

rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  dataOutcomeOfMeasures <- read.csv("./data/outcome-of-care-measures.csv", header = T,sep = ",")
  
  ## Check that state and outcome are valid
  states <- unique(dataOutcomeOfMeasures$State)
  outcomeSet <- c("heart attack", "heart failure","pneumonia")
  if(!state %in% states) {
    return("Invalid state")
  }
  if(!outcome %in% outcomeSet) {
    return("Invalid outcome")
  }
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  outcomeOfTheState <- subset(dataOutcomeOfMeasures,State==state)
  
  colNo <- NULL
  if(outcome == "heart attack") {
    colNo <- 11
  } else if(outcome == "heart failure") {
    colNo <- 17
  } else {
    colNo <- 23
  }
  outcomeOfTheState[,colNo] <- as.numeric(as.character(outcomeOfTheState[,colNo]))
  orderData <- outcomeOfTheState[order(outcomeOfTheState[,colNo],outcomeOfTheState[,2], na.last=NA),]
  
  if(num == "best") {
    num <- 1
  } else if(num == "worst") {
    num <- as.numeric(nrow(orderData))
  }
  
  return(as.character(orderData[num,]$Hospital.Name))
}