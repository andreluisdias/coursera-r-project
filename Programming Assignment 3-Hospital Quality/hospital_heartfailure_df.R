hospital_heartfailure_df <- function(state, outcome_csv) {

        hospital.df <- "---"
        
        ## Return hospital name in that state with lowest 30-day death rate
        a <- outcome_csv$Hospital.Name[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure != "Not Available"]
        b <- outcome_csv$State[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure != "Not Available"]
        c <- as.character(outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure != "Not Available"])

        hospital.df <- data.frame(cbind(a, b, c), stringsAsFactors=FALSE)
        names(hospital.df) <- c("Hospital", "State", "Rate")
        return(hospital.df)
}