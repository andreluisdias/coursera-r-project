source("hospital_pneumonia_df.R")
hospital_pneumonia <- function(state, outcome_csv) {

        hospital.df <- hospital_pneumonia_df(state, outcome_csv)

        e <- hospital.df$Hospital[hospital.df$Rate == min(as.numeric(hospital.df$Rate))]
        if (length(e) > 1) {
                sort(e)
                e <- e[1]
        }
        e
}