hospital_heartattack <- function(state, outcome_csv) {
        
        hospital.df <- "---"
        
        ## Return hospital name in that state with lowest 30-day death rate
        a <- outcome_csv$Hospital.Name[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack != "Not Available"]
        b <- outcome_csv$State[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack != "Not Available"]
        c <- as.character(outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack[outcome_csv$State == state & outcome_csv$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack != "Not Available"])
        d <- min(c)
        
        hospital.df <- data.frame(cbind(a, b, c), stringsAsFactors=FALSE)
        names(hospital.df) <- c("Hospital", "State", "Rate")
        
        e <- hospital.df$Hospital[hospital.df$Rate == d]
        if (length(e) > 1) {
                sort(e)
                e <- e[1]
        }
        e
        
}