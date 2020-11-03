#### This is the Code Book for Coursera course project *(Code book para proyecto de curso de Coursera)*.

- `run_analysis.R` performs the data preparation and then followed by the 5 steps required as described in the course project’s definition *(el archivo run_analysis.R 
realiza la preparación de datos y luego sigue los 5 pasos requeridos como se describe en la definición del proyecto del curso.)*.

1. **Download the dataset** *(Descarga de Datos.)*
     - Dataset downloaded and extracted under the folder called `UCI HAR Dataset`. *(Conjunto de datos descargados y extraidos en UCI HAR Dataset.)* 
     
2. **Assign each data to variables** *(Asigna cada dato a las variables)*
     - `features` <- `features.txt` : 561 rows, 2 columns
        The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. *(Las características seleccionadas 
        para esta base de datos provienen de las señales sin procesar de los 3 ejes del acelerómetro y giroscopio tAcc-XYZ y tGyro-XYZ.)*
     - `activities` <- `activity_labels.txt` : 6 rows, 2 columns
        List of activities performed when the corresponding measurements were taken and its codes (labels). *(Lista de actividades realizadas cuando se tomaron las medidas
        correspondientes y sus códigos ("labels")).*
     - `subject_test` <- `test/subject_test.txt` : 2947 rows, 1 column
        Contains data of volunteer test subjects being observed. *(Contiene los datos de sujetos de prueba voluntarios que se están observando.)*
