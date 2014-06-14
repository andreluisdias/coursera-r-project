source("~/Documents/curso/coursera_project/getFilename.R")
require(stringr)
library(stringr)

pollutantmean <- function(directory, pollutant, id = 1:332) {

  mainMatrix <- NA 
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  for (i in id) {
    # Load CSV file for current 'id'
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    theDir <- paste(directory, getFilename(i), sep = '/')
    theFile <- paste(theDir, ".csv", sep = '')
    message(theFile) #debug
    
    csvLoaded <- read.csv(theFile)

    if (is.na(mainMatrix)) {
      mainMatrix <- csvLoaded
    } else {
      mainMatrix <- rbind(mainMatrix, csvLoaded)
    }
  }
  
  currentMean <- NA
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  if (pollutant == 'sulfate') {
    message('sulfate identified') #debug
    currentMean <- mean(mainMatrix$sulfate, na.rm=TRUE) # (ignoring NA values)
  }
  
  if (pollutant == 'nitrate') {
    message('nitrate identified') #debug
    currentMean <- mean(mainMatrix$nitrate, na.rm=TRUE) # (ignoring NA values)    
  }

  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector 
  currentMean
}

