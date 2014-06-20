validateOutcome <- function(outcome) {

        ## 01 - TYPES
        if(!is.character(outcome)) {
                stop("invalid outcome")
        }
        
        #02 - CONTENT
        outcomes <- c("heart attack", "pneumonia", "heart failure")
        if (is.na(match(outcome, outcomes))) {
                stop("invalid outcome")
        }
}