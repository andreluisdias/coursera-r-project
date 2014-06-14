setwd("/home/andre/Documents/curso/coursera_project")

####
#### POLLUTANTMEAN :: source("pollutantmean.R")
####
        source("pollutantmean.R")
        pm <- pollutantmean("specdata", "sulfate", 1:10)
        ####names(a)
        ####tail(a)

####
#### COMPLETE :: source("complete.R")
####
        source("complete.R")
        compl <- complete("specdata", 1)
        compl <- complete("specdata", c(2, 4, 8, 10, 12))
        compl
        head(compl)
        tail(compl)
        df <- data.frame(compl)

####
#### SUBMIT :: source("submitscript1.R")
####
library(RCurl)
require(RCurl)
source("submitscript1.R")
submit(resetLogin=TRUE, manual=TRUE)