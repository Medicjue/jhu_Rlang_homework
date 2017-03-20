best <- function(state, outcome) {
  ## Read outcome data
  dataHospital <- read.csv("./data/hospital-data.csv", header = T, sep = ",")
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
  ## Return hospital name in that state with lowest 30-day death
  hosppitalOfTheState <- subset(dataHospital,State==state)
  mergedData <- merge(dataOutcomeOfMeasures, hosppitalOfTheState, by = "Provider.Number")
  namesOfData <- names(mergedData)
  
  patternOfOutcome <- gsub(" ", ".", outcome)
  for(nameOfData in namesOfData) {
    
    if(grepl(patternOfOutcome,nameOfData,ignore.case = T)&& grepl("30.Day",nameOfData,ignore.case = T)) {
      
      mergedData[,nameOfData] <- as.numeric(as.character(mergedData[,nameOfData]))
      minHospital <- min(mergedData[,nameOfData], na.rm = T)
      print(minHospital)
      ans <- subset(mergedData, mergedData[,nameOfData]==minHospital)
      return(ans$Hospital.Name.x)
    }
  }
  
  return("Invalid-outcome")
  ## rate
}