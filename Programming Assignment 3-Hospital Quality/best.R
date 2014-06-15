setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")
source("validateState.R")
source("validateOutcome.R")
source("hospital_pneumonia.R")
source("hospital_heartattack.R")
best <- function(state, outcome) {
        
        hospital.name <- NA
        
        ## Read outcome data
        outcome_csv <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")
        
        ##
        ## Check that state and outcome are valid
        ##
        ## 01 - TYPES
        if(!is.character(state)) {
                stop("invalid state")
        }
        
        #02 - CONTENT
        if (length(outcome_csv$Hospital.Name[outcome_csv$State == state]) == 0) {
                stop("invalid state")
        }
        
        
        validateOutcome(outcome, outcome_csv)
        
        ## Return hospital name in that state with lowest 30-day death rate
        if (outcome == "pneumonia") {
                hospital.name <- hospital_pneumonia(state, outcome_csv)
        }
        
        if (outcome == "heart attack") {
                hospital.name <- hospital_heartattack(state, outcome_csv)
        }
        

        if (length(hospital.name) == 0) {
                hospital.name <- "UNDEFINED"
        }
        
        hospital.name
}