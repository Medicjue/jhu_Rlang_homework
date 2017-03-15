pollutantmean <- function(directory, pollutant, id = 1:332) {
  allFiles <- as.character( list.files(directory) )
  filePaths <- paste(directory, allFiles, sep="/")
  allData <- {}
	for(fileId in id) {
	  singleData <- read.csv(filePaths[fileId], header = T)
	  allData <- rbind(allData, singleData)
	}
	return(mean(allData[,pollutant], na.rm = T))
}
