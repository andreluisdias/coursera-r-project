corr <- function(directory, threshold = 0) {
        
        mainDataFrame <- NA
        
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
                
        mainDataFrame        
 
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations

}

?cor
