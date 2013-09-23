getgdelt <- function(year, month = 123, directory, summarize = FALSE, head = FALSE){

  ## 'year' is a vector of length 1 indicating the year of recorded data
  
  ## 'month' is a vector of length 1 indicating the month of recorded data
  
  ## 'directory' is a character vector of length 1 indicating the location of the .csv files
  
  ## 'summarize' is a logical vector indicating whether a summary of the data should be
  ## printed to the console. The default setting is FALSE.
  
  ## 'head' is a logical vector indicating whether the first six lines of the data should be
  ## printed to the console. The default setting is FALSE.
  
  setwd("C:/DATA/GDELT/")
  
  if(month<10){
    month <- paste(0, month, sep="")
  }else if(month<1 & month>12){
    month <- paste(123, sep="")
  }else{
    month
  }
  
  if(month==123){
    directory <- paste(year, sep="")
  }else{
    directory <- paste(year, month, sep="")
  }
  
  filename <- paste(directory,"/",directory, ".csv", sep="")
  
  gdfile <- read.delim(filename, header=FALSE)
  
  if(summarize == TRUE){
    print(summary(gdfile))
  }
  
  if(head == TRUE){
    print(head(gdfile))
  }
}
