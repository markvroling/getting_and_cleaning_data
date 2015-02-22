Getting and Cleaning Data project README
========================================================

In this project the objective was to make a tidy dataset. You can find the script for making the tidy dataset in run_analysis.R. An explanation of the variables used can be found in Codebook.md. 

##How to run this script?
The script assumes you have the UCI HAR DATASET in your current working directory and you've installed the package "plyr". If this folder isn't in your working directory, an error will occur.

1. Put run_analysis.R in parent folder of UCI HAR DATASET.
2. Launch R session and set your working directory to this location (location of run_analysis.R).
3. run the script run_analysis.R.

After running this script you'll have text file called "tidy_data.txt" in the same folder as run_analysis.R.


##How does this script work?
First of all, files are loaded from the UCI HAR DATASET. After the files are loaded, the names of the columns are merged with the other files. All the test files and training files are then merged by using cbind and rbind. Now we have a complete dataset with all the variables and all the rows. Now a subset is created with only measurements on the mean and standard deviation. The meaning of some variables are not clear, so the the columnnames are changed. We have now a tidy dataset and the last step is to group by activy and subject and calculate the mean of the measurements. You can find this tidy dataset in the file in the same folder as run_analysis.R.


