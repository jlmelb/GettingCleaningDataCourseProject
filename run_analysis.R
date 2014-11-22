run_analysis <- function(directory){
        
##directory allows user to pass a file path to set the WD for importation of data

##set WD directory
setwd(directory)
        
##Imports all data files required
activity_labels <<- read.table("./activity_labels.txt")
features <<- read.table("./features.txt")
subject_test <<- read.table("./test/subject_test.txt")
x_test <<- read.table("./test/x_test.txt")
y_test <<- read.table("./test/y_test.txt")
subject_train <<- read.table("./train/subject_train.txt")
x_train <<- read.table("./train/x_train.txt")
y_train <<- read.table("./train/y_train.txt")

##transpose features data which will allow for rbind of headings for x_test and 
features_header <- t(features$V2)

##combine header name, as.character will convert factor into character vector
allheaders <<- c("subjectID", "activityID", as.character(features_header))

##column bind subject, x and y files
testdat <<- cbind(subject_test, y_test ,x_test)
traindat <<- cbind(subject_train, y_train, x_train)

##labels testdat and traindat
names(testdat) <<-allheaders
names(traindat) <<- allheaders
 
##merge training and test sets to create one data set
dat <<- rbind(traindat, testdat)

##extracts measurements on the mean (including meanFreq) and standard 
##deviation
subsetdat <<- dat[, c(1, 2, grep("mean()|std()", allheaders))]

##Uses descriptive activity names to name the activities in the data set
subsetdat <<- merge(activity_labels, subsetdat, by.x = "V1", by.y = "activityID")

##drops activityID column once merged and labels activityname column
subsetdat$activityID <- NULL
subsetdat$V1 <- NULL
subsetdat <<- colnames(subsetdat)[colnames(subsetdat) == "V2"] <- "activityName"


##melting data frame in order to work out avg
datmelt <- melt(subsetdat, id=c("activityName", "subjectID"))

##obtains avg of each variable for each activity and each subject
avgdat <- dcast(datmelt, activityName+subjectID~variable, mean)

##writes tidy data set to text file
write.table(avgdat, "./result.txt", row.names = F)



}