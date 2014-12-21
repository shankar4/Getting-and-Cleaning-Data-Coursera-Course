# No comments are provided here. 
# The 'DemoExample' folder has small representative data sets, a tutorial in WORD with all the 
# comments, and the final tidy data set ('myavg.txt)
# Included with this 'run_analsis.R' file is the console output for all the steps as a WORD
# document. The results are in the tidydata.txt file

testdata = read.table(file=file.choose())
str(testdata)
testdatapart1 <- testdata[,1:6]
testdatapart2 <- testdata[,41:46]
testdatapart3 <- testdata[,121:126]
rm(testdata)
testdata <- cbind(testdatapart1, testdatapart2, testdatapart3)
str(testdata)
ls()
traindata = read.table(file=file.choose())
str(traindata)
traindatapart1 <- traindata[,1:6]
traindatapart2 <- traindata[,41:46]
traindatapart3 <- traindata[,121:126]
rm(traindata)
traindata <- cbind(traindatapart1, traindatapart2, traindatapart3)
str(traindata)
alldata <- rbind (testdata, traindata)
str(alldata)
alldataasg <- alldata
str(alldataasg)
rm (alldata)
testact = read.table(file=file.choose())
testact
str(testact)
testsubj = read.table(file=file.choose())
str(testsubj)
head(testsubj)
tail(testsubj)
trainact = read.table(file=file.choose())
str(trainact)
head(trainact)
tail(trainact)
trainsubj = read.table(file=file.choose())
str(trainsubj)
head(trainsubj)
tail(trainsubj)
allact<- rbind(testact, trainact)
allsubj<- rbind(testsubj, trainsubj)
str(allact)
str(allsubj)
colnames(allact)<- "act"
colnames(allsubj) <- "id"
allasg <- cbind (allsubj, allact, alldataasg)
str(allasg)
allasg$id_act = paste (allasg$id, allasg$act, sep = "_")
str(allasg)
factorc<-factor(allasg$id_act)
factorc
library(dplyr)
myasg <- tbl_df(allasg)
str(myasg)
str(myasg$id_act)
by_id_act <- group_by (myasg, id_act)
str(by_id_act)
myavg <- summarize(by_id_act, id = mean(id), act = mean(act), ax.av= mean(V1), ay.av = mean(V2), az.av=mean(V3), ax.sd =mean(V4), ay.sd=mean(V5), az.sd = mean(V6), gx.av= mean(V41), gy.av = mean(V42), gz.av=mean(V43), gx.sd =mean(V44), gy.sd=mean(V45), gz.sd = mean(V46),rx.av= mean(V121), ry.av = mean(V122), rz.av=mean(V123), rx.sd =mean(V124), ry.sd=mean(V125), rz.sd = mean(V126)  )
str(myavg)
head(myavg)
tail(myavg)
myavg$act
myavg [, 3]<- gsub ("1", "WALK", myavg$act)
myavg$act
myavg [, 3]<- gsub ("2", "GO_UP", myavg$act)
myavg [, 3]<- gsub ("3", "GO_DOWN", myavg$act)
myavg [, 3]<- gsub ("4", "SIT", myavg$act)
myavg [, 3]<- gsub ("5", "STAND", myavg$act)
myavg [, 3]<- gsub ("6", "SUPINE", myavg$act)
myavg$act
str(myavg)
myavg <- myavg[, -1]
str(myavg)
#complete pathname is not given below
fname <- "C:/Users/......./CleanData/Project/getdata_projectfiles_UCI HAR Dataset/tidydata.txt"
write.table (myavg, sep="  \t", file= fname, row.names=FALSE, col.names=TRUE)

