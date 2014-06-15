setwd("/home/andre/Documents/curso/coursera_project/Programming Assignment 3-Hospital Quality")
best <- function(state, outcome) {
        
        resultado.df <- NA
        
        ## Read outcome data
        outcome_csv <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")
        
        ##
        ## Check that state and outcome are valid
        ##
        
        ## 01 - TYPES
                if(!is.character(state)) {
                        stop("invalid state")
                }
                
                if(!is.character(outcome)) {
                        stop("invalid outcome")
                }
        
        #02 - CONTENT
                if (length(outcome_csv$Hospital.Name[outcome_csv$State == state]) == 0) {
                        stop("invalid state")
                }
        
                outcomes <- c("heart attack", "pneumonia", "heart failure")
                if (is.na(match(outcome, outcomes))) {
                        stop("invalid outcome")
                }
        
        ## Return hospital name in that state with lowest 30-day death rate
        if (outcome == "pneumonia") {

                #
                # a <- outcome_csv$Hospital.Name[outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia == min(outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, na.rm=TRUE)]
                # b <- outcome_csv$State[outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia == min(outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, na.rm=TRUE)]
                # result <- data.frame(cbind(a, b))
                # result.ordered <- novo[order(novo$State, novo$Hospital), 1:2]
                # resultado <- result.ordered$Hospital[result.ordered$State == state]
                
                a <- outcome_csv$Hospital.Name[outcome_csv$State == state]
                b <- outcome_csv$State[outcome_csv$State == state]
                c <- outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia[outcome_csv$State == state]
                
                resultado.df <- data.frame(cbind(a, b, c))
                names(resultado.df) <- c("Hospital", "State", "Rate")
        }
        
        #df.resultado <- data.frame(resultado)
        #head(resultado, 1)
        resultado.df
}