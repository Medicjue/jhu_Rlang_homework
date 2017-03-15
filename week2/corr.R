corr <- function(directory, threshold = 0) {
  allComplete <- complete(directory)
  filteredComplete <- subset(allComplete, obs > threshold)
  
  rtn <- {}
  allFiles <- as.character( list.files(directory) )
  filePaths <- paste(directory, allFiles, sep="/")
  for(fileId in filteredComplete$id) {
    singleRawData <- read.csv(filePaths[fileId], header = T)
    singleData <- na.omit(data.frame(singleRawData))
    singleData$Date <- NULL
    rtn <- rbind(rtn, cor(singleData))
  }
  return(rtn)
}