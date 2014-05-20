####a <-read.table("/home/andre/Desktop/dataset_317_1.txt")
####a

#library(plyr)
#plyr
#ddply(a,names(a),summarize,Frequency=length(V5))
               
####cbind(ftable(a$v5))
####a
####b <- table(v1, v2, v3, v4, v5)

####test <- read.csv("/home/andre/Documents/Desktop/hw1_data.csv")
####names(test)
####head(test, 2)
####tail(test, 2)
####tail(test$Ozone, 47)

####names(test)

####test[47, 1:5]

####sum(is.na(test$Ozone))

####b <- test$Ozone[!is.na(test$Ozone)]
####c <- test$Ozone[is.na(test$Ozone)]
####c
####length(b)
####length(c)
####mean(b)

####test

####d <- subset(test, test$Ozone >= 31)

Vd <- with (test, subset(test$Solar.R, Temp > 90, Ozone > 31))
####mean(d)

e <- with (test, subset(Temp, Month > 6))
mean(e)

####curso <- read.csv("/home/andre/Downloads/curso/hw1_data.csv")
####curso <- NA
####is.na(curso)

####
#### OK
source("/home/andre/Downloads/curso/remote_cp/pollutantmean.R")
pm <- pollutantmean("/home/andre/Downloads/curso/specdata", "sulfate", 1:10)
names(pm)
head(pm)
tail(pm)
pm

pm <- pollutantmean("/home/andre/Downloads/curso/specdata", "nitrate", 70:72)
pm

pm <- pollutantmean("specdata", "nitrate", 23)
pm

####
####

####
####curso1 <- read.csv("/home/andre/Downloads/curso/specdata/001.csv")
####curso2 <- read.csv("/home/andre/Downloads/curso/specdata/002.csv")
####a <- rbind(curso1, curso2)
####names(a)
####tail(a)
####head(a)


rm(getFilename)
rm(pollutantmean)

library(RCurl)
require(RCurl)
source("submitscript1.R")
submit()
