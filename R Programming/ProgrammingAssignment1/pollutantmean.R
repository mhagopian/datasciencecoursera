pollutantmean <- function(directory, pollutant, id=1:332){
  files<- list.files(directory, full.names=TRUE)
  datp<-data.frame()
  for (i in id) {
    datp<-rbind(datp, read.csv(files[i]))
  }
  mean(datp[,pollutant], na.rm=TRUE)
}