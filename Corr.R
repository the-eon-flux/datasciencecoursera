"
Write a function that takes a directory of data files and a threshold for 
complete cases and calculates the correlation between sulfate and nitrate 
for monitor locations where the number of completely observed cases 
(on all variables) is greater than the threshold. The function should 
return a vector of correlations for the monitors that meet the threshold 
requirement. If no monitors meet the threshold requirement, then the function 
should return a numeric vector of length 0. 

"

source("Complete.R")

corr <- function(directory, threshold = 0){
    
    Files <- list.files(directory)
    CompleteCases_df <- complete(directory = directory)
    CorrVec <- numeric()
    for(eachId in 1:nrow(CompleteCases_df)){
        if(CompleteCases_df$nobs[eachId] > threshold){
            FileName <- paste(directory, Files[CompleteCases_df$id[eachId]], sep="")
            Data_df <- read.csv(FileName)
            CompleteCasesI <- complete.cases(Data_df)
            CorVal <- cor(Data_df$sulfate[CompleteCasesI], Data_df$nitrate[CompleteCasesI])
            CorrVec <- c(CorrVec, CorVal)
        }
    }
    CorrVec
}

Directory = "Data/specdata/" 
Result <- corr(Directory, 1000)
summary(Result)

Result <- sort(Result)
n <- length(Result)

set.seed(197)
out <- c(n, round(Result[sample(n, 5)], 4))
print(out)
print(c(n, round(Result, 4)))

