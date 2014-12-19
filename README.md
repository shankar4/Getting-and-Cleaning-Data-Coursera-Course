###Getting-and-Cleaning-Data-Coursera-Course
=========================================
References: 
  1. Data set overview: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  2. Wickham, H., Tidy Data, Journal of Statistical Software, Vol VV, Issue II, 2011, www.jstatsoft.org
  3. Anguita, D., et al., Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic, J of Universal Computer Science, vol. 19, no. 9, 2013, 1295-1314.
  4. Reyes-Ortiz, J.L., et al, Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments, Proceedings of ESANN, Bruges, Belgium, April 2013

Data provided:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

'Understanding' the data: The zipped folder has the "UCI HAR" dataset. The folder contains 2 folders entitled "test" and "train" and four text files.
The common text files are: 
  1. "activity_labels" which lists the 6 types of activities peformed by the subjects: WALKING, SITTING, etc.
  2. "features_info" - which lists the features derived from the original collected raw data (from 3-dimensional accelerometer and gyroscope sensors on a smart phone) and derived/estimated body acceleration signals (for a total of 9 'raw' or original signals). The authors have derived 561 features that are both in time and frequency domain, and has items such as mean, sd, max, min, energy etc. 
  3. "featuers" which lists these 561 items.
  4. "README" provides the big picture. 

In terms of the big picture, 30 subjects performed 6 different types of activities, for a total period of about 15 to 16 minutes per subject. Since there were 6 types of activities, each activity was performed for about 2.5 minutes and data sets defined in chunks of 2.56 seconds. Thus each set of raw data we find in the "test" and "train" folders -- go inside the folders and look at the 'Inertial Signals' folder -which contain 9 data files (one each for the X,Y, and Z acceleration and gyroscope signals from the smart phone - totalling  to 6 data files + 3 derived data files one each for the body acceleration - derived from the other six raw data sets). Each of these 'Inertial Signals' data files has chunks of 128 data entries, corresponding to one data window of 2.56 seconds each. NOTE: How to find these sets. Just follow each group until it ends. The other set starts as a new paragraph. So, each paragraph in MS WORD is a set. You can select each paragraph and verify that it has 128 entries or data values associated with it. Yes, it is confusing and exhilirating! If you carefully analyze these data files (in the 'Inertial Signals' folders), you will find 2497 sets in the subfolder of 'test' and 7352 sets in the subfolder of 'train' - they used the latter for training their ANN, and tested their ANN with the former set. But neither was used directly in training or testing the ANN. 

The "train" and "test" folders have similar contents. They split the overall set so that some of the data was used for training their ANN (artificial neural network), while the other smaller part of the data was used for testing the resulting ANN weights. 

Opening the data sets in Notepad was OK for the X data; however, opening the how the original 6 signals (3 accelerometer signals and 3 gyroscope signals, both in X, Y, and Z directions) were collected - in 2.56 second windows - with 128 samples spaced apart 20 ms (but averages of 50% overlapping windows of 20 ms period). Thus each window of the most raw data (the above 6 signals and the derived body acceleraion signals in X,Y, and Z directions - for a total of 9 sets of data sitting in the test and train folders) has sets of 128 data points per data collection event of 2.56 seconds. If you open this in MS Windows, the number of pargraphs gives the number of data sets. 
