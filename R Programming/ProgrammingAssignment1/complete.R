complete <- function(directory, id=1:332){
  files<- list.files(directory, full.names=TRUE)
  cframe<-data.frame()
  for (i in id){
      cdat<-read.csv(files[i])
      nobs<-sum(complete.cases(cdat))
        nframe<-data.frame("id"=i,nobs)
    cframe<-rbind(cframe, nframe)
  }
  cframe
}