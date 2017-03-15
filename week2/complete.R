complete <- function(directory, id = 1:332) {
  allFiles <- as.character( list.files(directory) )
  filePaths <- paste(directory, allFiles, sep="/")
  rtn <- {}
  for(fileId in id) {
    singleData <- read.csv(filePaths[fileId], header = T)
    rtn <- rbind(rtn, data.frame(id= fileId, obs = sum(!is.na(singleData[,"sulfate"]), na.rm = TRUE)))
  }
  return(rtn)
}