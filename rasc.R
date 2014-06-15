setwd("/home/andre/Documents/curso/coursera_project")

####
#### POLLUTANTMEAN :: source("pollutantmean.R")
####
        source("pollutantmean.R")
        pm <- pollutantmean("specdata", "sulfate", 1:10)

####
#### COMPLETE :: source("complete.R")
####
        source("complete.R")
        print(complete("specdata", c(1,2,3)))
        print(complete("specdata", c(2, 4, 8, 10, 12)))
        print(complete("specdata", 30:25))
        print(complete("specdata", 3))

####
#### CORRELATION :: source("corr.R")
####
        source("corr.R")


####
#### SUBMIT :: source("submitscript1.R")
####
        library(RCurl)
        require(RCurl)
        source("submitscript1.R")
        submit(resetLogin=TRUE, manual=TRUE)