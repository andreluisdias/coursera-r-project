complete <- function(directory, id = 1:332) {
        
        mainDataFrame <- NA
        
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
                
                # DATAFRAME FILTERED
                csvLoaded <- data.frame(csvLoaded)
                a <- csvLoaded$ID[!is.na(csvLoaded$sulfate) & !is.na(csvLoaded$nitrate)]
                a <- data.frame(a)
                
                b <- cbind(i, nrow(a))
                b <- data.frame(b)
                names(b) <- c("id", "nobs")
                
                if (!is.data.frame(mainDataFrame)) {
                      mainDataFrame <- b
                      mainDataFrame <- data.frame(mainDataFrame)
                      names(mainDataFrame) <- c("id", "nobs")
                } else {
                        mainDataFrame <- rbind(mainDataFrame, data.frame(b))
                }
        }        

        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        #data.frame(mainDataFrame)
        mainDataFrame
}