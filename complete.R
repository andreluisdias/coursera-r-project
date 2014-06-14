complete <- function(directory, id = 1:332) {
        
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

        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        mainMatrix
}