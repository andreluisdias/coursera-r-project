### OLD-TESTING
outcome_tmp <- read.csv("rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")
length(outcome_tmp$Hospital.Name[outcome_tmp$State == "TX"])

a <- outcome_tmp$Hospital.Name[outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia == min(outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, na.rm=TRUE)]
b <- outcome_tmp$State[outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia == min(outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, na.rm=TRUE)]
c <- cbind(a, b)
c
novo <- data.frame(c)
names(novo) <- c("Hospital", "State")
novo$State
novo.ordered <- novo[order(novo$State, novo$Hospital), 1:2]
novo.ordered


str(d)
d
names(d) <- c("a", "b")

d.ordered <- d[order(d[,2])]
d.ordered

rownames(d)
d.order <- order(d)
t <- data.frame(d)
t$a



####################### TEMP

#main script
setwd("/home/denise/Desktop/coursera-workspace/coursera_project/Programming Assignment 3-Hospital Quality")
source("best.R")##source("/home/denise/Desktop/coursera-workspace/coursera_project/Programming Assignment 3-Hospital Quality/best.R")
best(1, 1)

some <- best("TX", "pneumonia")
names(some)
some
best("TX", "pneumonia")
tmp <- best("MD", "pneumonia")
names(tmp)
tmp[tmp$Rates]

min(tmp$Rate, is.na=TRUE)]
lower.tri(some$c)


abc <- some[min(some$Rate, na.rm=TRUE)]




outcome_tmp <- read.csv("/home/denise/Desktop/coursera-workspace/coursera_project/Programming Assignment 3-Hospital Quality/rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv", colClasses="character")
a <- outcome_tmp$Hospital.Name
b <- outcome_tmp$State
c <- outcome_tmp$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia
resultado.df <- data.frame(cbind(a, b, c))
dim(resultado.df)
resultado.df$c