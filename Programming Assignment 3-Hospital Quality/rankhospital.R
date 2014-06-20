setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")
source("validateState.R")
source("validateOutcome.R")

rankhospital <- function(state, outcome, num = "best") {
        hospital.name <- NA
        
        ## Read outcome data
        outcome_csv <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")

        ## Check that state and outcome are valid
        validateState(state, outcome_csv)
        validateOutcome(outcome, outcome_csv)        
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
}