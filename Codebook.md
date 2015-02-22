Getting and Cleaning Data project Codebook
========================================================

###Data source

Data used in this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Files used 
Not all the files are used in my script. The following files are used:

* subject_test.txt
* x_test.txt
* y_test.txt
* subject_training.txt
* x_training.txt
* y_training.txt
* features.txt
* activity_labels.txt


###Variables in the tidy dataset

You can find the following variables in the tidy dataset:

| Number       | Name          | Class  |
| :-------------: |:-------------:| :-----:|
| 1 | activityId|Factor
| 2 | subject|num
| 3 | timeBodyAccMean-X|num
| 4 | timeBodyAccMean-Y|num
| 5 | timeBodyAccMean-Z|num
| 6 | timeBodyAcc-std-X|num
| 7  | timeBodyAcc-std-Y|num
| 8  | timeBodyAcc-std-Z|num
| 9  | timeGravityAccMean-X|num
| 10 | timeGravityAccMean-Y|num
|11 |timeGravityAccMean-Z|num
|12 |timeGravityAcc-std-X|num
|13 |timeGravityAcc-std-Y|num
|14 |timeGravityAcc-std-Z|num
|15 |timeBodyAccJerkMean-X|num
16| timeBodyAccJerkMean-Y|num
17|timeBodyAccJerkMean-Z|num
18 |timeBodyAccJerk-std-X|num
19 |timeBodyAccJerk-std-Y|num
20 |timeBodyAccJerk-std-Z|num
21 |timeBodyGyroMean-X|num
22 |timeBodyGyroMean-Y|num
23 |timeBodyGyroMean-Z|num
24 |timeBodyGyro-std-X|num
25 |timeBodyGyro-std-Y|num
26 |timeBodyGyro-std-Z|num
27 |timeBodyGyroJerkMean-X|num
28 |timeBodyGyroJerkMean-Y|num
29 |timeBodyGyroJerkMean-Z|num
30 |timeBodyGyroJerk-std-X|num
31 |timeBodyGyroJerk-std-Y|num
32 |timeBodyGyroJerk-std-Z|num
33 |timeBodyAccMagMean|num
34 |timeBodyAccMagStdDev|num
35 |timeGravityAccMagMean|num
36 |timeGravityAccMagStdDev|num
37 |timeBodyAccJerkMagMean|num
38 |timeBodyAccJerkMagStdDev|num
39 |timeBodyGyroMagMean|num
40 |timeBodyGyroMagStdDev|num
41 |timeBodyGyroJerkMagMean|num
42 |timeBodyGyroJerkMagStdDev|num
43 |freqBodyAccMean-X|num
44 |freqBodyAccMean-Y|num
45 |freqBodyAccMean-Z|num
46 |freqBodyAcc-std-X|num
47 |freqBodyAcc-std-Y|num
48 |freqBodyAcc-std-Z|num
49 |freqBodyAccMeanFreq-X|num
50 |freqBodyAccMeanFreq-Y|num
51 |freqBodyAccMeanFreq-Z|num
52 |freqBodyAccJerkMean-X|num
53 |freqBodyAccJerkMean-Y|num
54 |freqBodyAccJerkMean-Z|num
55 |freqBodyAccJerk-std-X|num
56 |freqBodyAccJerk-std-Y|num
57 |freqBodyAccJerk-std-Z|num
58 |freqBodyAccJerkMeanFreq-X|num
59 |freqBodyAccJerkMeanFreq-Y|num
60 |freqBodyAccJerkMeanFreq-Z|num
61 |freqBodyGyroMean-X|num
62 |freqBodyGyroMean-Y|num
63 |freqBodyGyroMean-Z|num
64 |freqBodyGyro-std-X|num
65 |freqBodyGyro-std-Y|num
66 |freqBodyGyro-std-Z|num
67 |freqBodyGyroMeanFreq-X|num
68 |freqBodyGyroMeanFreq-Y|num
69 |freqBodyGyroMeanFreq-Z|num
70 |freqBodyAccMagMean|num
71 |freqBodyAccMagStdDev|num
72 |freqBodyAccMagMeanFreq|num
73 |freqBodyBodyAccJerkMagMean|num
74 |freqBodyBodyAccJerkMagStdDev|num
75 |freqBodyBodyAccJerkMagMeanFreq|num
76 |freqBodyBodyGyroMagMean|num
77 |freqBodyBodyGyroMagStdDev|num
78 |freqBodyBodyGyroMagMeanFreq|num
79 |freqBodyBodyGyroJerkMagMean|num
80 |freqBodyBodyGyroJerkMagStdDev|num
81 |freqBodyBodyGyroJerkMagMeanFreq|num
82 |activityType|Factor