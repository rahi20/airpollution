corr <- function(directory, treshold = 0){
  #in every monitor the number of completely observed cases should be greater than treshold otherwise the correlation 
  #coef is not gonna be caculated
  list.of.monitors <- list.files("~/Desktop/files/study/R/practice/airpollution/specdata")
  v.corr <- c()
  for(i in list.of.monitors){
    d <- read.csv(i)
    #the number of complete cases in d 
    d <- d[complete.cases(d), ]
    num <- nrow(d)
    if(num > treshold){
      correlation <- cor(d$sulfate, d$nitrate)
      v.corr <- append(v.corr, correlation)
    }
  }
  v.corr
}