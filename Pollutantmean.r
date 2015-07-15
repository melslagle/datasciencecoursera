pollutantmean <- function(directory, pollutant, id = 1:332) 
{
	setwd(directory) ##set working directory
	filenameslist <- dir() ##take the file names from the directory and make a filenameslist
	workingset <- vector() ##create an empty vector called workingset to add each vector created to 
	for (filename in filenameslist) 
	{
		thisframe <- read.csv(filename) ##read the csv into thisframe data frame
		idvalues <- thisframe[["ID"]] ##take the ID value and make a vector idvalues
		if (idvalues[1] %in% id) ##check if the id is called
		{x <- thisframe[["sulfate"]] ##if it is take the sulfate values and create x vector
		workingset <- c(workingset, x) ##take the x values and add them to the workingset
		} 
		else ##or else do nothing 
		{
		}
	}
	mean(workingset, na.rm=TRUE) ##take the mean of the working set and ignore NAs
}	
	
