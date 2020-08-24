"
Write a function that reads a directory full of files and reports the number of 
completely observed cases in each data file. The function should return a data 
frame where the first column is the name of the file and the second column is 
the number of complete cases. 

"

complete <- function(directory, id = 1:332){
    
    Files <- list.files(directory)
    Len <- numeric()
    
    for(Id in id){
        #print(paste("Reading : ", Files[Id]))
        FileName <- paste(directory, Files[Id], sep="")
        Fdf <- read.csv(FileName)
        
        CompleteCaseI <- complete.cases(Fdf)
        l <- nrow(Fdf[CompleteCaseI,])
        Len <- c(Len, l)
    }
    ResultDf <- data.frame(id=id,nobs=Len)
    #View(ResultDf)
}

'
Directory = "Data/specdata/"    #Data dir
MonitorIds = 332:1

cc  <-complete(Directory, MonitorIds)
use <- sample(332, 10)
print(cc[use, "nobs"])
'

'
Q7.) RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])


'
