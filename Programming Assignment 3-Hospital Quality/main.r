setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")

####
#### BEST
####
        source("best.R")
        
        # Running
        best("TX", "heart attack") # OK [1] "CYPRESS FAIRBANKS MEDICAL CENTER" #OK
        best("MD", "heart attack") # OK [1] "JOHNS HOPKINS HOSPITAL, THE" #OK
        best("MD", "pneumonia") # OK [1] "GREATER BALTIMORE MEDICAL CENTER"
        best("TX", "heart failure") # [1] "FORT DUNCAN MEDICAL CENTER"
        best("BB", "heart attack") # OK Error in best("BB", "heart attack") : invalid state
        best("NY", "hert attack") # OK Error in best("NY", "hert attack") : invalid outcome
        

####
#### SUBMIT :: source("submitscript1.R")
####
        library(RCurl)
        require(RCurl)
        source("rprog_scripts_submitscript3.R")
        submit(resetLogin=TRUE, manual=TRUE)
