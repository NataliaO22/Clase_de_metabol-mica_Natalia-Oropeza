2+2
2*2
2^(-4)
CHO <- 535000
VERO <-  1350000
Co_cultivo <- CHO + VERO
Co_cultivo

# Una tabla se puede crear haciendo los vectores (columnas) por separado y luego juntándolos en un data frame
Nombre <- c("Manuel","Jesus","Juana","Yaniv")
Estatura <- c(1.77,1.7,1.6,1.79)
Edad <- c(42,21,22,23)
Mascota <- c("Si","Si","No","Si")
Tabla <- data.frame(Nombre, Estatura, Edad, Mascota)
Tabla
View(Tabla)


# También se puede poner todo junto
Tabla_junto <- data.frame(Nombre = c("Manuel","Jesus","Juana","Yaniv"), Estatura = c(1.77,1.7,1.6,1.79), Edad = c(42,21,22,23), Mascota = c("Si","Si","No","Si"))
Tabla_junto
View(Tabla_junto)


