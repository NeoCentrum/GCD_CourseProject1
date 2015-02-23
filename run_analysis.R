analyzeData <- function(){
  #Get All Activity Labels
  activityLabel <- read.table("activity_labels.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("ActivityId","ActivityLabels"))  
  print("Sample Activity Labels Data")
  print(head(activityLabel,n=3))
  print("-------------------------------------------------------------------------------------------------------")
  #Get All Features
  dataFeature <- read.table("features.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("FeatureId","Feature"))  
  print("Sample Features Data")
  print(head(dataFeature,n=3))
  print("-------------------------------------------------------------------------------------------------------")
  
  #Training DataSet Processing
  
  #Get Train Subject Data
  trainSubject <- read.table("train/subject_train.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("SubjectId"))  
  print("Sample Subjects Data")
  print(head(trainSubject,n=3))
  print("-------------------------------------------------------------------------------------------------------")
  
  #Get Train Subjects Activities Data
  trainSubjectActivities <- read.table("train/y_train.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("ActivityId"))  
  print("Sample Training set Subjects Activities Data")
  print(head(trainSubjectActivities,n=3))
  print("-------------------------------------------------------------------------------------------------------")
  
  #Get Train X Data
  X_train <- read.table("train/X_train.txt", header = FALSE, sep = "",quote = "\"'",na.strings = "",fill=TRUE, colClasses="numeric",col.names =dataFeature$Feature ) 
  print("Sample Training set Data")
  print(head(X_train,n=3))
  print("-------------------------------------------------------------------------------------------------------")
  
  #Merge Train set and its subjects and Activities data
  sub_act_X_train <- cbind(trainSubject,trainSubjectActivities,X_train)
  print("Sample Merged Training set Data")
  print(head(sub_act_X_train,n=3))  
  print("-------------------------------------------------------------------------------------------------------")
  
 #Test Dataset Processing
 #Test Subjects Data
 testSubject <- read.table("test/subject_test.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("SubjectId"))  
 print("Sample Test set Subjects Data")
 print(head(testSubject,n=3))  
 print("-------------------------------------------------------------------------------------------------------")
 
 #Test Subjects Activities
 testSubjectActivities <- read.table("test/y_test.txt", header = FALSE, sep = " ",quote = "\"'",na.strings = "?",col.names = c("ActivityId"))  
 print("Sample Test set Subjects Activities Data")
 print(head(testSubjectActivities,n=3)) 
 print("-------------------------------------------------------------------------------------------------------")
 
 #Test X
 X_test <- read.table("test/X_test.txt", header = FALSE, sep = "",quote = "\"'",na.strings = "",fill=TRUE, colClasses="numeric",col.names =dataFeature$Feature ) 
 print("Sample Test set Data")
 print(head(X_test,n=3)) 
 print("-------------------------------------------------------------------------------------------------------")
 
 #Merge Test set and its subjects and activities
 sub_act_X_test <- cbind(testSubject,testSubjectActivities,X_test)
 print("Sample Merged Test set Data")
 print(head(X_test,n=3)) 
 print("-------------------------------------------------------------------------------------------------------")
 
 #Merge Subject Train set and Subject Test Sets
 sub_act_X_dataset <- rbind(sub_act_X_train,sub_act_X_test)
 print("Sample Subjects Activities DataSet X - Complete Train + Test")
 print(head(sub_act_X_dataset,n=3))
 print("-------------------------------------------------------------------------------------------------------")
 
  
 #Get Dataframe with Selective Mean and Std measurements variables
 sub_act_X_dataset_mean_std <- sub_act_X_dataset[,c(1,2,3:8,43:48,83:88,123:128,163:168,203,204,216,217,229,230,242,243,255,256,268:273,347:352,426:431,505,506,518,519,531,532,544,545), drop=FALSE]
 #Verify dataset mean_std for measurements
 print("Names of Mean and Standard Deviation variables")
 print(names(sub_act_X_dataset_mean_std))
 print("-------------------------------------------------------------------------------------------------------")
 
 
 #Add descriptive Activity Labels
 sub_act_X_dataset_mean_std$ActivityId <- factor(sub_act_X_dataset_mean_std$ActivityId, levels = activityLabel$ActivityId , labels=activityLabel$ActivityLabels)
 print("Names of Mean and Standard Deviation variables")
 print(head(sub_act_X_dataset_mean_std$ActivityId,n=3))
 print("-------------------------------------------------------------------------------------------------------")
 
 
 #Set descriptive Variable labels for 
 colnames(sub_act_X_dataset_mean_std) <- c("SubjectId","Activity","Time Mean Body Acceleration X","Time Mean Body Acceleration Y","Time Mean Body Acceleration Z","Time Std Dev Body Acceleration X","Time Std Dev Body Acceleration Y","Time Std Dev Body Acceleration Z","Time Mean Gravity Acceleration X","Time Mean Gravity Acceleration Y","Time Mean Gravity Acceleration Z","Time Std Dev Gravity Acceleration X","Time Std Dev Gravity Acceleration Y","Time Std Dev Gravity Acceleration Z","Time Mean Body Acceleration Jerk X","Time Mean Body Acceleration Jerk Y","Time Mean Body Jerk Acceleration Z","Time Std Dev Body Acceleration Jerk X","Time Std Dev Body Acceleration Jerk Y","Time Std Dev Body Acceleration Jerk Z","Time Mean Body Gyro Axis X","Time Mean Body Gyro Axis Y","Time Mean Body Gyro Axis Z","Time Std Dev Body Gyro Axis X","Time Std Dev Body Gyro Axis Y","Time Std Dev Body Gyro Axis Z","Time Mean Body Gyro Jerk Axis X","Time Mean Body Gyro Jerk Axis Y","Time Mean Body Gyro Jerk Axis Z","Time Std DEv Body Gyro Jerk Axis X","Time Std Dev Body Gyro Jerk Axis Y","Time Std Dev Body Gyro Jerk Axis Z","Time Mean Body Acceleration Magnitude","Time Std Dev Body Acceleration Magnitude","Time Mean Gravity Acceleration Magnitude","Time Std Dev Gravity Acceleration Magnitude","Time Mean Body Acceleration Jerk Magnitude","Time Std Dev Body Acceleration Jerk Magnitude","Time Mean Body Gyro Magnitude","Time Std Dev Body Gyro Magnitude","Time Mean Body Gyro Jerk Magnitude","Time Std Dev Body Gyro Jerk Magnitude","Frequency Mean Body Acceleration X","Frequency Mean Body Acceleration Y","Frequency Mean Body Acceleration Z","Frequency Std Dev Body Acceleration X","Frequency Std Dev Body Acceleration Y","Frequency Std Dev Body Acceleration Z","Frequency Mean Body Acceleration Jerk X","Frequency Mean Body Acceleration Jerk Y","Frequency Mean Body Acceleration Jerk Z","Frequency Std Dev Body Acceleration Jerk X","Frequency Std Dev Body Acceleration Jerk Y","Frequency Std Dev Body Acceleration Jerk Z","Frequency Mean Body Gyro Axis X","Frequency Mean Body Gyro Axis Y","Frequency Mean Body Gyro Axis Z","Frequency Std Dev Body Gyro Axis X","Frequency Std Dev Body Gyro Axis Y","Frequency Std Dev Body Gyro Axis Z","Frequency Mean Body Acceleration Magnitude","Frequency Std Dev Body Acceleration Magnitude","Frequency Mean Body Acceleration Jerk Magnitude","Frequency Std Dev Body Acceleration Jerk Magnitude","Frequency Mean Body Gyro Magnitude","Frequency Std Dev Body Gyro Magnitude","Frequency Mean Body Gyro Jerk Magnitude","Frequency Std Dev Body Gyro Jerk Magnitude")
 
 #Melt Dataset to shape it as per questions 
 sub_act_X_dataset_mean_std_melt <- melt(sub_act_X_dataset_mean_std,id.vars=c("SubjectId","Activity"),measure.vars=c("Time Mean Body Acceleration X","Time Mean Body Acceleration Y","Time Mean Body Acceleration Z","Time Std Dev Body Acceleration X","Time Std Dev Body Acceleration Y","Time Std Dev Body Acceleration Z","Time Mean Gravity Acceleration X","Time Mean Gravity Acceleration Y","Time Mean Gravity Acceleration Z","Time Std Dev Gravity Acceleration X","Time Std Dev Gravity Acceleration Y","Time Std Dev Gravity Acceleration Z","Time Mean Body Acceleration Jerk X","Time Mean Body Acceleration Jerk Y","Time Mean Body Jerk Acceleration Z","Time Std Dev Body Acceleration Jerk X","Time Std Dev Body Acceleration Jerk Y","Time Std Dev Body Acceleration Jerk Z","Time Mean Body Gyro Axis X","Time Mean Body Gyro Axis Y","Time Mean Body Gyro Axis Z","Time Std Dev Body Gyro Axis X","Time Std Dev Body Gyro Axis Y","Time Std Dev Body Gyro Axis Z","Time Mean Body Gyro Jerk Axis X","Time Mean Body Gyro Jerk Axis Y","Time Mean Body Gyro Jerk Axis Z","Time Std DEv Body Gyro Jerk Axis X","Time Std Dev Body Gyro Jerk Axis Y","Time Std Dev Body Gyro Jerk Axis Z","Time Mean Body Acceleration Magnitude","Time Std Dev Body Acceleration Magnitude","Time Mean Gravity Acceleration Magnitude","Time Std Dev Gravity Acceleration Magnitude","Time Mean Body Acceleration Jerk Magnitude","Time Std Dev Body Acceleration Jerk Magnitude","Time Mean Body Gyro Magnitude","Time Std Dev Body Gyro Magnitude","Time Mean Body Gyro Jerk Magnitude","Time Std Dev Body Gyro Jerk Magnitude","Frequency Mean Body Acceleration X","Frequency Mean Body Acceleration Y","Frequency Mean Body Acceleration Z","Frequency Std Dev Body Acceleration X","Frequency Std Dev Body Acceleration Y","Frequency Std Dev Body Acceleration Z","Frequency Mean Body Acceleration Jerk X","Frequency Mean Body Acceleration Jerk Y","Frequency Mean Body Acceleration Jerk Z","Frequency Std Dev Body Acceleration Jerk X","Frequency Std Dev Body Acceleration Jerk Y","Frequency Std Dev Body Acceleration Jerk Z","Frequency Mean Body Gyro Axis X","Frequency Mean Body Gyro Axis Y","Frequency Mean Body Gyro Axis Z","Frequency Std Dev Body Gyro Axis X","Frequency Std Dev Body Gyro Axis Y","Frequency Std Dev Body Gyro Axis Z","Frequency Mean Body Acceleration Magnitude","Frequency Std Dev Body Acceleration Magnitude","Frequency Mean Body Acceleration Jerk Magnitude","Frequency Std Dev Body Acceleration Jerk Magnitude","Frequency Mean Body Gyro Magnitude","Frequency Std Dev Body Gyro Magnitude","Frequency Mean Body Gyro Jerk Magnitude","Frequency Std Dev Body Gyro Jerk Magnitude"))
 print("Sample Melted Dataset")
 print(head(sub_act_X_dataset_mean_std_melt,n=3))
 print("-------------------------------------------------------------------------------------------------------")
 
 #Find Mean of each id(Subject,Activity) 
 sub_act_mean_X_dataset_mean_std <- dcast(sub_act_X_dataset_mean_std_melt, SubjectId + Activity ~ variable,mean)
 print("Sample Final Dataset with Mean of each measure Variable for each (Subject + Activity) combination")
 print(head(sub_act_mean_X_dataset_mean_std,n=3))
 print("-------------------------------------------------------------------------------------------------------")
 
 #Set descriptive Variable labels please refer codebook for details
 colnames(sub_act_mean_X_dataset_mean_std) <- c("Subject","Activity","Average of Time Mean Body Acceleration X","Average of Time Mean Body Acceleration Y","Average of Time Mean Body Acceleration Z","Average of Time Std Dev Body Acceleration X","Average of Time Std Dev Body Acceleration Y","Average of Time Std Dev Body Acceleration Z","Average of Time Mean Gravity Acceleration X","Average of Time Mean Gravity Acceleration Y","Average of Time Mean Gravity Acceleration Z","Average of Time Std Dev Gravity Acceleration X","Average of Time Std Dev Gravity Acceleration Y","Average of Time Std Dev Gravity Acceleration Z","Average of Time Mean Body Acceleration Jerk X","Average of Time Mean Body Acceleration Jerk Y","Average of Time Mean Body Jerk Acceleration Z","Average of Time Std Dev Body Acceleration Jerk X","Average of Time Std Dev Body Acceleration Jerk Y","Average of Time Std Dev Body Acceleration Jerk Z","Average of Time Mean Body Gyro Axis X","Average of Time Mean Body Gyro Axis Y","Average of Time Mean Body Gyro Axis Z","Average of Time Std Dev Body Gyro Axis X","Average of Time Std Dev Body Gyro Axis Y","Average of Time Std Dev Body Gyro Axis Z","Average of Time Mean Body Gyro Jerk Axis X","Average of Time Mean Body Gyro Jerk Axis Y","Average of Time Mean Body Gyro Jerk Axis Z","Average of Time Std DEv Body Gyro Jerk Axis X","Average of Time Std Dev Body Gyro Jerk Axis Y","Average of Time Std Dev Body Gyro Jerk Axis Z","Average of Time Mean Body Acceleration Magnitude","Average of Time Std Dev Body Acceleration Magnitude","Average of Time Mean Gravity Acceleration Magnitude","Average of Time Std Dev Gravity Acceleration Magnitude","Average of Time Mean Body Acceleration Jerk Magnitude","Average of Time Std Dev Body Acceleration Jerk Magnitude","Average of Time Mean Body Gyro Magnitude","Average of Time Std Dev Body Gyro Magnitude","Average of Time Mean Body Gyro Jerk Magnitude","Average of Time Std Dev Body Gyro Jerk Magnitude","Average of Frequency Mean Body Acceleration X","Average of Frequency Mean Body Acceleration Y","Average of Frequency Mean Body Acceleration Z","Average of Frequency Std Dev Body Acceleration X","Average of Frequency Std Dev Body Acceleration Y","Average of Frequency Std Dev Body Acceleration Z","Average of Frequency Mean Body Acceleration Jerk X","Average of Frequency Mean Body Acceleration Jerk Y","Average of Frequency Mean Body Acceleration Jerk Z","Average of Frequency Std Dev Body Acceleration Jerk X","Average of Frequency Std Dev Body Acceleration Jerk Y","Average of Frequency Std Dev Body Acceleration Jerk Z","Average of Frequency Mean Body Gyro Axis X","Average of Frequency Mean Body Gyro Axis Y","Average of Frequency Mean Body Gyro Axis Z","Average of Frequency Std Dev Body Gyro Axis X","Average of Frequency Std Dev Body Gyro Axis Y","Average of Frequency Std Dev Body Gyro Axis Z","Average of Frequency Mean Body Acceleration Magnitude","Average of Frequency Std Dev Body Acceleration Magnitude","Average of Frequency Mean Body Acceleration Jerk Magnitude","Average of Frequency Std Dev Body Acceleration Jerk Magnitude","Average of Frequency Mean Body Gyro Magnitude","Average of Frequency Std Dev Body Gyro Magnitude","Average of Frequency Mean Body Gyro Jerk Magnitude","Average of Frequency Std Dev Body Gyro Jerk Magnitude")
 print("Names of Average of Mean and Standard Deviation variables")
 print(names(sub_act_mean_X_dataset_mean_std))
 print("-------------------------------------------------------------------------------------------------------")
 
 #Final Dataset
 sub_act_mean_X_dataset_mean_std
 print("Sample Final Dataset")
 print(names(sub_act_mean_X_dataset_mean_std))
 print("-------------------------------------------------------------------------------------------------------")
 
 #write data to a File
 write.table(sub_act_mean_X_dataset_mean_std,file="SubjectActivitiesAverageMeasurementsDatset.txt",sep = " ",quote = TRUE,eol = "\n",row.name=FALSE)
  
 #read processed data from File 
 verify_sub_act_mean_X_dataset_mean_std <- read.table("SubjectActivitiesAverageMeasurementsDatset.txt", header = TRUE, sep = " ",quote = "\"'",na.strings = "")
 print("Variable Names and Sample from Final Dataset from File for Verification")
 print(names(verify_sub_act_mean_X_dataset_mean_std))
 print(head(verify_sub_act_mean_X_dataset_mean_std,n=3))
 print("-------------------------------------------------------------------------------------------------------")
 
 #return Verify Final Dataset
 verify_sub_act_mean_X_dataset_mean_std
}

analyzeData()