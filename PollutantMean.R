"
Write a function named 'pollutantmean' that calculates the mean of a pollutant 
(sulfate or nitrate) across a specified list of monitors.The function 'pollutantmean' 
takes three arguments: 'directory', 'pollutant', and 'id'.

Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter
data from the directory specified in the 'directory' argument and returns the mean of the
pollutant across all of the monitors, ignoring any missing values coded as NA.

"
pollutantmean <- function(directory, pollutant, id = 1:332){
    
    Files <- list.files(directory)
    AllData <-numeric()
    
    for (Id in id) {
        #print(paste("Reading : ", Files[Id]))
        AllData <- c(AllData,unlist(read.csv(paste(directory,Files[Id],sep=""),header = TRUE)[pollutant]))
    }
    Mean<- mean(AllData, na.rm = TRUE)
    print(Mean)
}

Directory = "Data/specdata/"    #Data dir
list.files(Directory)           #Checking if the files exist

Pollutant = "nitrate"           #(sulfate or nitrate)
Pollutant1 = "sulfate"
MonitorIds = 34

#FunctionCall
round(pollutantmean(directory = Directory, pollutant = Pollutant1, id = MonitorIds),3)




