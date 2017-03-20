rankall <- function(outcome, num = "best") {
  ## Read outcome data
  dataOutcomeOfMeasures <- read.csv("./data/outcome-of-care-measures.csv", header = T,sep = ",")
  ## Check that state and outcome are valid
  states <- sort(unique(dataOutcomeOfMeasures$State))
  ## For each state, find the hospital of the given rank
  rtn <- {}
  for(state in states) {
    rtn <- rbind(rtn,c(rankhospital(state,outcome,num), state))
  }
  rtn <- as.data.frame(rtn)
  names(rtn)[1] <- "hospital"
  names(rtn)[2] <- "state"
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  return(rtn)
}