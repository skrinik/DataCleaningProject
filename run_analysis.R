#SET YOUR LOCAL CLONE REPO AS YOUR WORKING DIRECTORY, EXTRACT THE DATA SETS INTO THIS DIRECTORY#


#ACTIVITY LABELS#
activity_labels <- read.table("activity_labels.txt")
activity_labels <- rename(activity_labels, ID = V1, Activity = V2)


#TRAINING SET#
#Obtain all necessary data then reset WD
training_set <- read.table("train/X_train.txt"); train_activity <- read.table("train/y_train.txt"); train_subject <- read.table("train/subject_train.txt")
#apply column names to large data set to prepare for merge
col_names_features <- read.table("features.txt")
col_names_features <- col_names_features[,"V2"]
colnames(training_set) <- col_names_features


#TEST SET#
#Obtain all necessary data then reset WD
test_set <- read.table("test/X_test.txt"); test_activity <- read.table("test/y_test.txt"); test_subject <- read.table("test/subject_test.txt")
#apply column names to test data to prepare for merge
colnames(test_set) <- col_names_features


#APPLY COLUMN NAMES#

#-TRAINING SET-#
train_activity$V1 <- with(activity_labels, Activity[match(train_activity$V1, ID)])
if(!(training_set[,1] == "train_activity$V1")){
    training_set <- cbind(train_activity$V1,train_subject, training_set)
}
colnames(training_set)[2] <- "subject"
colnames(training_set)[1] <- "activity" 

#-TEST SET-#
test_activity$V1 <- with(activity_labels, Activity[match(test_activity$V1, ID)])
if(!(test_set[,1] == "test_activity$V1")){
    test_set <- cbind(test_activity$V1,test_subject, test_set)
}
colnames(test_set)[2] <- "subject"
colnames(test_set)[1] <- "activity" 


#SUBSET TO MAKE MERGING EASIER#
valid_column_names <- make.names(names=names(test_set), unique=TRUE, allow_ = TRUE)
names(test_set) <- valid_column_names #Creates valid names to avoid error in matches()
names(training_set) <- valid_column_names #Same for the other set

test_set <- select(test_set, activity, subject, matches('mean|std'))
training_set <- select(training_set, activity, subject, matches('mean|std'))


#MERGE
merged_data <- merge(training_set, test_set, by = names(training_set), all = T)#merge by all columns since the colnames are the same (makes the process simple)
clean_names <- tolower(gsub("[^[:alpha:]]", "", names(merged_data))) #make clean names
colnames(merged_data) <- clean_names #assign column names to the clean names 


#CREATE TIDY DATA SET & WRITE TO FILE
merged_data$subject <- as.factor(merged_data$subject) #make each subject a factor
tidy_means <- aggregate(select(merged_data, matches("[^subject|activity]") ), by = list(merged_data$activity, merged_data$subject), function(x) mean(x, na.rm = T)) #creates tidy means data set, na.rm is there just incase
tidy_means <- rename(tidy_means, activity = Group.1, subject = Group.2) #rename subject and activity columns
if(!file.exists("tidy_means.csv")){
    write.csv(tidy_means, "tidy_means.csv") #create csv file with tidy data set as requested
}else{"File Already Exists in Directory"}







