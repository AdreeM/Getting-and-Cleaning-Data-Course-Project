library(plyr)

datosbrutos <- "getdata_projectfiles_UCI HAR Dataset"

## 0
# Comprobar existencia de la informacion (Checking data)
if(!file.exists(datosbrutos)) {
  URLarchivo <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(URLarchivo, datosbrutos, method = "curl")
}

# Comprobar si existe el directorio (Checking folder)
if(!file.exists("UCI HAR Dataset")) {
  unzip(datosbrutos)
}

# Encuadrando marco de datos (assigning data frame)

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n", "functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

## 1 Combinando conjuntos de datos (merging test & training)

X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train,subject_test)
Data_Comb <- cbind(Subject, Y, X)

## 2 Medidas de desviacion estandar y media (measures for mean & str )
Datos_ord <- Data_Comb %>% select(subject, code, contains("mean"), contains("std"))

## 3 Nombrando actividades (naming activities)
Datos_ord$code <- activities[Datos_ord$code, 2]

## 4 Etiquetando datos (labeling the data set)
names(Datos_ord)[2] = "activity"
names(Datos_ord) <- gsub("Acc", "Accelerometer", names(Datos_ord))
names(Datos_ord) <- gsub("Gyro", "Gyroscope", names(Datos_ord))
names(Datos_ord) <- gsub("BodyBody", "Body", names(Datos_ord))
names(Datos_ord) <- gsub("Mag", "Magnitude", names(Datos_ord))
names(Datos_ord) <- gsub("^t", "Time", names(Datos_ord))
names(Datos_ord) <- gsub("^f", "Frequency", names(Datos_ord))
names(Datos_ord) <- gsub("tBody", "TimeBody", names(Datos_ord))
names(Datos_ord) <- gsub("-mean()", "Mean", names(Datos_ord), ignore.case = TRUE)
names(Datos_ord) <- gsub("-std()", "STD", names(Datos_ord), ignore.case = TRUE)
names(Datos_ord) <- gsub("-freq()", "Frequency", names(Datos_ord), ignore.case = TRUE)
names(Datos_ord) <- gsub("angle", "Angle", names(Datos_ord))
names(Datos_ord) <- gsub("gravity", "Gravity", names(Datos_ord))

## 5 Promedio de cada variable (Average)
Datosfinales <- Datos_ord %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(Datosfinales, file = "Datosfinales.txt", row.name = FALSE)

