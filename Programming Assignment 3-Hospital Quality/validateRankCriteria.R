validateRankCriteria <- function(criteria, hospital.ranked) {

        #01 - CONTENT
        if (is.character(criteria)) {
                criterias <- c("best", "worst")
                if (is.na(match(criteria, criterias))) {
                        #print("invalid rank criteria - LITERAL")
                        return(NA)
                }
                
                if (criteria == "best") {
                        return(1)
                }
                
                if (criteria == "worst") {
                        return(length(hospital.ranked$RankPosition))
                }
        }

        ## 02 - TYPES
        if(is.numeric(criteria)) {
                
                if (criteria > length(hospital.ranked$RankPosition)) {
                        #print("invalid rank criteria - LENGTH")
                        return(NA)        
                }
        }
        
        return(criteria)
}