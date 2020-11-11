pollutantmean <- function(directory, pollutant, id=1:332){
  d <- list.files("~/Desktop/files/study/R/practice/airpollution/specdata")[id]
  readfiles <- lapply(d, read.csv)
  data <- do.call(rbind, readfiles)
  mean(data[[pollutant]][!is.na(data[[pollutant]])])
}