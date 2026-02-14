
install.packages("pacman") # paquete que llama a otros paquetes y, si no están, los instala

library("pacman") # esta función llama al paquete instalado

p_load("ggplot2", # para graficar 
       "dplyr", # para facilitar manejo de datos
       "vroom") # llamar repositorios

Datos_curva <- vroom(file ="https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Amplif_grupo1_17022025.csv")

head(Datos_curva) # para que muestre solo los 6 primeros datos



# para graficar, vamos a usar la función dplyr

Curva_1 <- Datos_curva %>% # el pipe sirve para encadenar operaciones de manera más clara y legible
  select(1,5) # puse 1 porque quiero que tenga el "cycle" y 5 porque me tocó graficar "D1"
Curva_1

Grafica_curva <- ggplot(Curva_1, # primero poner qué se va a graficar (datos), 
                        mapping = aes(x = Cycle,
                                      y = D1)) + # y luego qué va en cada eje, el signo de + es como %>% para ggplot
  geom_point() # aquí se indica el tipo de gráfica

Grafica_curva



# es una curva que no amplificó, entonces voy a usar F1

Curva_2 <- Datos_curva %>%
  select("Cycle","F1")

Grafica_curva2 <- ggplot(Curva_2,
                         mapping = aes(x = Cycle,
                                       y = F1)) +
  geom_point()+ 
  geom_line(color = "red",
            linewidth = 1.2)

Grafica_curva2


Grafica_curva3 <- Grafica_curva2 +
  labs(x = "Ciclos",
       y = "Fluorescencia",
       title = "Gráfica F1",
       subtitle = "Creado por Natalia",
       caption = "Ejercicio 3")+
  theme_classic()

Grafica_curva3
