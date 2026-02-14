# Ejercicio 2DDCT

#install.packages("pacman") 
library("pacman") 

p_load("ggplot2", 
       "dplyr", 
       "vroom") 

Datos_PCR <- vroom(file = "https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Genes.csv")

Datos_PCR

Gen_ref <- Datos_PCR %>%
  filter(Gen == "B-actina")%>%
  select(-1) # filter es como select pero para filas en lugar de columnas

Gen_ref

# para seleccionar todos los genes menos el de referencia

Gen_int <- Datos_PCR %>%
  filter (Gen != "B-actina") %>%
  select(-1)


Gen_int


DCT <- Gen_int %>%
  mutate(DC1 = C1 - Gen_ref$C1,
         DC2 = C2 - Gen_ref$C2,
         DC3 = C3 - Gen_ref$C3,
         DT1 = T1 - Gen_ref$T1,
         DT2 = T2 - Gen_ref$T2,
         DT3 = T3 - Gen_ref$T3) %>%
  select(-1:-6)

DCT
