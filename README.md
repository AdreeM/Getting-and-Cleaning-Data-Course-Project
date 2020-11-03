# Assignment: Getting and Cleaning Data Course Project (Week 4)

This repository contains the necessary steps to obtain and analyze data from the recognition of Human Activity using smart phones.
*Este repositorio contiene los pasos necesarios para la obtención y analisis de datos provenientes del reconocimiento de Actividad humana usando telefonos inteligentes.*

## **Dataset**
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## **Files**

- `CodeBook.md` a codebook that describes the variables, the data, and any transformations applied to the data *(Describe las variables, los datos y cualquier transformación aplicada a los datos.)*:

- `run_analysis.R` performs the data preparation and then followed by the 5 steps required as described in the course project’s definition *(realiza la preparación de datos y luego sigue los 5 pasos requeridos como se describe en la definición del proyecto del curso)*:
  - Merges the training and the test sets to create one data set *(Mezclando los conjuntos de "training" y "test" para crear un conjunto de datos.)*.
  - Extracts only the measurements on the mean and standard deviation for each measurement *(Extraer solo las medidas de la media y la desviación estándar de cada medida.)*.
  - Uses descriptive activity names to name the activities in the data set *(Utiliza nombres de actividades descriptivos para nombrar las actividades en el conjunto de datos)*.
  - Appropriately labels the data set with descriptive variable names *(Etiqueta adecuadamente el conjunto de datos con nombres de variables descriptivos.)*.
  - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject *(A partir del conjunto de datos del paso 4, crea un segundo conjunto de datos ordenado e independiente con el promedio de cada variable para cada actividad y cada tema.)*.

- `FinalData.txt` is the exported final data after going through all the sequences described above *(datos finales exportados después de pasar por todas las secuencias descritas anteriormente.)*.
