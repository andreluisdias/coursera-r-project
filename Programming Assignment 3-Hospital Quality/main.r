setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")

####
#### BEST
####
        source("best.R")

####
#### TESTING
####
        a <- best("NY", "pneumonia")
        best("TX","pneumonia")
        best("TX", "heart attack")
        best("TX", "heart failure")
        best("MD", "heart attack")
        best("MD", "pneumonia")
        
        ## Errors
        best("BB", "heart attack")
        best("NY", "hert attack")

####
#### SUBMIT :: source("submitscript1.R")
####
        library(RCurl)
        require(RCurl)
        source("rprog_scripts_submitscript3.R")
        submit(resetLogin=TRUE, manual=TRUE)