setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")

####
#### BEST
####
        source("best.R")
        # Debugging
        debug(best("TX", "heart attack"))
        debug(best("MD", "pneumonia"))
        
        # Running
        print(best("TX", "heart attack"))
        print(best("MD", "pneumonia"))
        print(best("NY", "pneumonia"))

####
#### SUBMIT :: source("submitscript1.R")
####
        library(RCurl)
        require(RCurl)
        source("rprog_scripts_submitscript3.R")
        submit(resetLogin=TRUE, manual=TRUE)

####
#### TESTING
####
        best("NY", "pneumonia")
        best("TX","pneumonia")
        best("TX", "heart attack")
        best("TX", "heart failure")
        best("MD", "heart attack")
        best("MD", "pneumonia")
        
        ## Errors
        best("BB", "heart attack")
        best("NY", "hert attack")

a <- c("0.1", "1.1", "1.2")
min(a)
