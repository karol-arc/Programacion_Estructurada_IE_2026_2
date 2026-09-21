Algoritmo SistemaGestionEscolar

    Dimension nombres[7]
    Dimension calificaciones[7]
    

    nombres[1] <- "Ana"
    nombres[2] <- "Luis"
    nombres[3] <- "Maria"
    nombres[4] <- "Carlos"
    nombres[5] <- "Sofia"
    nombres[6] <- "Pedro"
    nombres[7] <- "Laura"
    
    calificaciones[1] <- 8.5
    calificaciones[2] <- 5.2
    calificaciones[3] <- 9.0
    calificaciones[4] <- 4.8
    calificaciones[5] <- 7.3
    calificaciones[6] <- 6.0
    calificaciones[7] <- 3.9
    
  
    aprobado <- 6.0
    
    Escribir "=== Sistema de Gestion Escolar ==="
    Escribir "Alumnos registrados:"
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir nombres[i]
    FinPara
    Escribir ""
    
 
    Escribir "Ingresa el nombre del alumno a buscar:"
    Leer nombreBuscar

    encontrado <- Falso
    posicion <- 0
    
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Si Minusculas(nombres[i]) = Minusculas(nombreBuscar) Entonces
            encontrado <- Verdadero
            posicion <- i

        FinSi
    FinPara
    
 
    Si encontrado = Verdadero Entonces
        Escribir ""
        Escribir "Alumno encontrado: ", nombres[posicion]
        Escribir "Calificacion: ", calificaciones[posicion]
        
        Si calificaciones[posicion] >= aprobado Entonces
            Escribir "Resultado: APROBO"
        Sino
            Escribir "Resultado: REPROBO"
        FinSi
    Sino
        Escribir ""
        Escribir "El alumno ", nombreBuscar, " no se encuentra en el sistema."
    FinSi
    
FinAlgoritmo