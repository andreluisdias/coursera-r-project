setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")
source("validateState.R")
source("validateOutcome.R")
source("validateRankCriteria.R")
source("hospital_pneumonia_df.R")
source("hospital_heartattack_df.R")
source("hospital_heartfailure_df.R")
library(plyr)

rankhospital <- function(state, outcome, num = "best") {
        hospital.df.ranked <- NA
        
        ## Read outcome data
        outcome_csv <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")

        ## Check that state and outcome are valid
        validateState(state, outcome_csv)
        validateOutcome(outcome)
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
        ## Return hospital name in that state with lowest 30-day death rate
        if (outcome == "pneumonia") {
                hospital.df.ranked  <- hospital_pneumonia_df(state, outcome_csv)
        }
        
        if (outcome == "heart attack") {
                hospital.df.ranked <- hospital_heartattack_df(state, outcome_csv)
        }
        
        if (outcome == "heart failure") {
                hospital.df.ranked <- hospital_heartfailure_df(state, outcome_csv)
        }
        
        if (length(hospital.df.ranked) == 0) {
                hospital.df.ranked <- NA
        }
        
        # RANKING DATA
        novoNome <- hospital.df.ranked$Hospital[order(as.numeric(hospital.df.ranked$Rate), decreasing=FALSE)]
        novoRate <- hospital.df.ranked$Rate[order(as.numeric(hospital.df.ranked$Rate), decreasing=FALSE)]

        # RANKING DATA - DATA FRAMED
        result.df <- data.frame(cbind(as.character(novoRate), novoNome, c(1:length(novoNome))), stringsAsFactors=FALSE)
        names(result.df) <- c("rate", "hospital", "idx")
        
        # SORTING DATA
        attach(result.df)
        result.sorted.rates <- result.df$rate[order(as.numeric(rate), hospital)]
        result.sorted.hospitals <- result.df$hospital[order(as.numeric(rate), hospital)]
        detach(result.df)

        # RESULT - DATA FRAMED
        result.sorted <- cbind(result.sorted.rates, result.sorted.hospitals, c(1:length(result.sorted.hospitals)))
        finalresult <- data.frame(result.sorted)
        names(finalresult) <- c("Rate", "Hospital", "RankPosition")
        finalresult
                
        # RANK PARAMETER
        finalIdx <- validateRankCriteria(num, finalresult)
        
        if(!is.na(finalIdx)) {
                hospital.found <- finalresult$Hospital[finalresult$RankPosition == finalIdx]
                return(as.character(hospital.found))
        }
        
        return(NA)
}