setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")
source("validateState.R")
source("validateOutcome.R")
source("hospital_pneumonia.R")
source("hospital_heartattack.R")
source("hospital_heartfailure.R")
best <- function(state, outcome) {
        
        hospital.name <- NA
        
        ## Read outcome data
        outcome_csv <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")
        
        validateState(state, outcome_csv)
        validateOutcome(outcome)
        
        ## Return hospital name in that state with lowest 30-day death rate
        if (outcome == "pneumonia") {
                hospital.name <- hospital_pneumonia(state, outcome_csv)
        }
        
        if (outcome == "heart attack") {
                hospital.name <- hospital_heartattack(state, outcome_csv)
        }
        
        if (outcome == "heart failure") {
                hospital.name <- hospital_heartfailure(state, outcome_csv)
        }
        

        if (length(hospital.name) == 0) {
                hospital.name <- "UNDEFINED"
        }
        
        hospital.name
}