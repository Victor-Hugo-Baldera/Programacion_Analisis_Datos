# Instalar el paquete agricolae si no está instalado
if (!require(agricolae)) {
  install.packages("agricolae")
  library(agricolae)
}

# Definir los factores
tratamientos <- c("0 (Testigo)", "50", "150")
repeticiones <- 5

# Crear el diseño DCA
diseno_DCA <- design.crd(tratamientos, r = repeticiones, serie = 1)

# Ver el diseño aleatorizado
print(diseno_DCA)

# Mostrar la disposición de las unidades experimentales
diseno_DCA$book



# DBCA --------------------------------------------------------------------
library(agricolae)
library(tidyverse)

# fertilizante: 0, 50, 100
# cultivar: canchan y peruanita
trt<-c(3, 2) # factorial 3x2


outdesign <-design.ab(trt, r=4, design = "rcbd")
book<-outdesign$book

book %>% str()

ds <- book %>% 
  mutate(ferti = case_when(
    A %in% 1 ~ "0"
    ,  A %in% 2 ~ "50"
    ,  A %in% 3 ~ "100"
  )) %>% 
  mutate(cultivar = case_when(
    B %in% 1 ~ "canchan"
    ,  B %in% 2 ~ "peruanita"
  )) 


ds %>% 
  openxlsx::write.xlsx(file = "dbca.xlsx")
