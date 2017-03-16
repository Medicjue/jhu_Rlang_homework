corr <- function(directory, threshold = 0) {
  allComplete <- complete(directory)
  filteredComplete <- subset(allComplete, nobs > threshold)
  
  rtn <- {}
  allFiles <- as.character( list.files(directory) )
  filePaths <- paste(directory, allFiles, sep="/")
  for(fileId in filteredComplete$id) {
    singleRawData <- read.csv(filePaths[fileId], header = T)
    singleData <- na.omit(data.frame(singleRawData))
    rtn <- rbind(rtn, corr=cor(x=singleData$sulfate,y=singleData$nitrate))
  }
  return(rtn)
}