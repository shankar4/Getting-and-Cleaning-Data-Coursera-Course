Getting-and-Cleaning-Data-Coursera-Course
=========================================

This is the Project Assignment for the course. It uses the Human Activity Recognition Using Smartphones Data Set.
How the script works: For more details and details on 'due diligence' (that is, understanding 
the data before embarking on an analysis) see the "Assignment Overview.md" file 

A demo example folder, entitled 'DemoExample' has been included. The R script used has been described here
by taking the example of 4 data sets for 'test' and 'train' from the original data set. 
This folder has the test and train data folders,  a detailed WORD document on the script steps and results, 
and a resulting .txt file (myavg.txt) that is saved back to the working directory. 

The process outlined in the 'DemoExample' was used for the whole set. All the correspoding files are included in this directory: (1) run_analysis.R file - no comments are included here - the demoexample's WORD document has all the details given there; (2) run_analysis_R_console_output - this is a WORD document that fully documents the console output, which but for comments is pretty self-documenting; (3) tidydata.txt - the outputs of the R script. It is a text file of the data base with 180 rows and 20 columns; and (4) codebook.md - this details the codes and provides more details on the text file. 

Note: I use read.table(file=file.choose()) to keep the data file reads generic. If you run my code, there will be six
places where you will have to browse over to where the data files are located and load them. This makes it a bit more
manual, but separates the data set from the working directory. This, I think, is a better programming practice ('separation of concerns'). The other way would have been to compromise the hierarchical data folder structure that the original data came in and create a flat hierarchy in the working directory. But one can always claim that I might chose the wrong database when done manually. I do checks such as str(), head(), and tail () to verify that I am loading the correct data. Besides, R is meant for interactive analysis, not for batch processing. Either way, there is a WORD document ('run_analysis_R_console_output') that shows what to expect with these R commands of str(), head(), and tail(), as you use my code with your data. 

All the best!
