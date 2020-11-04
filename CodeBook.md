#### This is the Code Book for Coursera course project *(Code book para proyecto de curso de Coursera)*.

- `run_analysis.R` performs the data preparation and then followed by the 5 steps required as described in the course project’s definition *(el archivo run_analysis.R 
realiza la preparación de datos y luego sigue los 5 pasos requeridos como se describe en la definición del proyecto del curso.)*.

1. **Download the dataset** *(Descarga de Datos.)*
     - Dataset downloaded and extracted under the folder called `UCI HAR Dataset`. *(Conjunto de datos descargados y extraidos en UCI HAR Dataset.)* 
     
2. **Assign each data to variables** *(Asigna cada dato a las variables)*
     - `features` <- `features.txt` : 561 rows, 2 columns.
        The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. *(Las características seleccionadas 
        para esta base de datos provienen de las señales sin procesar de los 3 ejes del acelerómetro y giroscopio tAcc-XYZ y tGyro-XYZ.)*
     - `activities` <- `activity_labels.txt` : 6 rows, 2 columns.
        List of activities performed when the corresponding measurements were taken and its codes (labels). *(Lista de actividades realizadas cuando se tomaron las medidas
        correspondientes y sus códigos ("labels")).*
     - `subject_test` <- `test/subject_test.txt` : 2947 rows, 1 column
        Contains data of volunteer test subjects being observed. *(Contiene los datos de sujetos de prueba voluntarios que se están observando.)*
     - `x_test` <- `test/X_test.txt` : 2947 rows, 561 columns.
        Recorded features test data. *(Caracteristicas de los datos de prueba.)*
     - `y_test` <- `test/y_test.txt` : 2947 rows, 1 columns.
        Data of activities’code labels. *(Datos de prueba de etiquetas de código de actividades.)*
     - `subject_train` <- `test/subject_train.txt` : 7352 rows, 1 column.
        Contains data of volunteer subjects being observed. *(Contiene datos de sujetos voluntarios que se están observando.)*
     - `x_train` <- `test/X_train.txt` : 7352 rows, 561 columns.
        Recorded features of train data. *(Caracteristicas de los datos de "train".)*
     - `y_train` <- ^test/y_train.txt` : 7352 rows, 1 columns.
        Data of activities’code labels. *(Datos de las etiquetas de los codigos de las actividades de "train".)*
        
3. **Merges the training and the test sets to create one data set** *(Mezclando conjuntos "training" y "test" para crear un solo conjunto de datos.)*

     - `X` (10299 rows, 561 columns) is created by merging `x_train` and `x_test` using **rbind()** function. *(`X` se crea mezclando `x_train` and `x_test`.)*
     - `Y` (10299 rows, 1 column) is created by merging `y_train` and `y_test` using **rbind()** function. *(`Y` se crea mezclando `y_train` and `y_test`.)*
     - `Subject` (10299 rows, 1 column) is created by merging `subject_train` and `subject_test` using **rbind()** function. (`Subject` se crea mezclando `subject_train` and            `subject_test`.)*
     - `Data_Comb` (10299 rows, 563 column) is created by merging `Subject`, `Y` and `X` using **cbind()** function. (`Data_Comb` se crea mezclando `Subject`, `Y`,`X`.)*
     
4. **Extracts only the measurements on the mean and standard deviation for each measurement** *(Extrae solo las medidas de la desviación estándar y media de cada medida.)*
     - `Datos_ord` (10299 rows, 88 columns) is created by subsetting `Data_comb`, selecting only columns: `subject`, `code` and the measurements on the `mean` and **standard            deviation** `(std)` for each measurement. *(`Datos_ord` es creada agrupando `Data_comb`, seleccionando solo las columnas: `subject`, `code` y las medidas de `mean` y            **standard deviation** `(std)` para cada medida. 

