GettingCleaningDataCourseProject
================================

Coursera Course Project for the Getting and Cleaning Data 

run_analysis.R function's purpose is to generate a tidy data set based on data collected from the accelerometers from the Samsung Galaxy S smartphone.

To run the function, follow the following steps:

1.  Source the run_analysis.R function
2.  The function takes a variable 'directory'.  In order for the function to run, please create a variable to store the file path for which the folders test and train, features.txt and activity_labels.txt are stored.

For example - if the file path to the data is 'C:\R\Getting_and_Cleaning_Data\Assignment' and assuming that the function is stored in the same directory.

The code to run the function would be:


directory <- "C:\R\Getting_and_Cleaning_Data\Assignment"
source('C:/R/Getting_and_Cleaning_Data/Assignment/run_analysis.R')
run_analysis(directory)

Once the function has been run, a text file called result.txt will be generated in the same directory.  Please refer to the code book for an explanation of the variables.
