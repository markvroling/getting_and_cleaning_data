library(plyr)

# Read all the data
activity     = read.table('./UCI HAR Dataset/activity_labels.txt',header=FALSE); 
subjectTrain = read.table('./UCI HAR Dataset/train/subject_train.txt',header=FALSE);
features     = read.table('./UCI HAR Dataset/features.txt',header=FALSE); 
xTrain       = read.table('./UCI HAR Dataset/train/x_train.txt',header=FALSE);
yTrain       = read.table('./UCI HAR Dataset/train/y_train.txt',header=FALSE); 
subjectTest  = read.table('./UCI HAR Dataset/test/subject_test.txt',header=FALSE); 
xTest        = read.table('./UCI HAR Dataset/test/x_test.txt',header=FALSE); 
yTest        = read.table('./UCI HAR Dataset/test/y_test.txt',header=FALSE); 


# rename the columns
colnames(activity)  = c('activityId','activityType');
colnames(subjectTrain)  = "subject";
colnames(yTrain)        = "activityId";
colnames(xTrain)        = features[,2]; 
colnames(subjectTest) = "subject";
colnames(xTest)       = features[,2]; 
colnames(yTest)       = "activityId";

# combine columns yTrain,subjectTrain and xTrain (same with test)
training = cbind(yTrain,subjectTrain,xTrain);
test = cbind(yTest,subjectTest,xTest);

# combine test and training data
totalData = rbind(training,test);


#filter on mean and stdev
names = colnames(totalData)
rightLabels <- grepl("subject|activity|mean|std", names)
totalData = totalData[,rightLabels]

#assign names of activity to dataset
totalData = merge(x = totalData, y = activity, by = "activityId", all.x = T)
totalData$activityId = totalData$activityType


names = colnames(totalData)

#make variables more readable
for (i in 1:length(names)) 
{
    names[i] = gsub("\\()","",names[i])
    names[i] = gsub("-std$","StdDev",names[i])
    names[i] = gsub("-mean","Mean",names[i])
    names[i] = gsub("^(t)","time",names[i])
    names[i] = gsub("^(f)","freq",names[i])

}

#apply new names to data
colnames(totalData) = names

# group by subject and activity and order them. 
means   <-  aggregate(. ~subject + activityId, totalData, mean)
means   <-  means[order(means$subject,means$activityId),]

# write file tidy data.
write.table(means, file="tidy_data.txt",  row.name=FALSE)

