complete <- function(directory, id=1:332){
  #get the names of the files in specdata 
  
  list.of.files <- list.files("~/Desktop/files/study/R/practice/airpollution/specdata")[id]
  
  #setwd("specdata") if not already done in the console, otherwise ERROR: no file found 
  #or use:
  # parent <- "~/Desktop/files/study/R/practice/airpollution/specdata/"
  # list.of.files <- paste(parent, list.of.files, sep="")

  num <- c()
  for(i in list.of.files){
    
    data <- read.csv(i)
    
    num <-append(num, nrow(data[complete.cases(data), ]))
  }
  resultat <- data.frame("id" = id, "nobs" = num)
  resultat
}

