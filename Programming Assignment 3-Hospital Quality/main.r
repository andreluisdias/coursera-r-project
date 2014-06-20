setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")

####
#### BEST
####
        source("best.R")
        
        # Running
        best("TX", "heart attack")      # [1] "CYPRESS FAIRBANKS MEDICAL CENTER" #OK
        best("MD", "heart attack")      # OK [1] "JOHNS HOPKINS HOSPITAL, THE" #OK
        best("MD", "pneumonia")         # OK [1] "GREATER BALTIMORE MEDICAL CENTER"
        best("TX", "heart failure")     # OK [1] "FORT DUNCAN MEDICAL CENTER"
        best("BB", "heart attack")      # OK Error in best("BB", "heart attack") : invalid state
        best("NY", "hert attack")       # OK Error in best("NY", "hert attack") : invalid outcome

####
#### RANK HOSPITALS
####
        source("rankhospital.R")

        rankhospital("TX", "heart failure", "worst")
        rankhospital("TX", "heart failure", 4)          # [1] "DETAR HOSPITAL NAVARRO"
        rankhospital("TX", "heart failure", "best")
        rankhospital("TX", "heart failure", 10000)          # [1] "DETAR HOSPITAL NAVARRO"

        rankhospital("MD", "heart attack", "worst")     # [1] "HARFORD MEMORIAL HOSPITAL"
        rankhospital("MN", "heart attack", 5000)        # [1] NA

####
#### RANK ALL
####
        source("rankall.R")

        rankall("pneumonia", "worst")
        rankall("pneumonia", "best")
        rankall("pneumonia", 35)

        tail(rankall("pneumonia", "worst"), 3)

        head(rankall("heart attack", 20), 10)
        
        tail(rankall("heart failure"), 10)

####
#### SUBMIT :: source("submitscript1.R")
####
        library(RCurl)
        require(RCurl)
        source("rprog_scripts_submitscript3.R")
        submit(resetLogin=TRUE, manual=TRUE)

