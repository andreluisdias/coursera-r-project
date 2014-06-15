validateState <- function(state, outcome_csv) {

        ## 01 - TYPES
        if(!is.character(state)) {
                stop("invalid state")
        }
        
        #02 - CONTENT
        if (length(outcome_csv$Hospital.Name[outcome_csv$State == state]) == 0) {
                stop("invalid state")
        }
}