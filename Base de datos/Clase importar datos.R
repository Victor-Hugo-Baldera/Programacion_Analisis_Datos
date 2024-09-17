
# Importacion de datos  ---------------------------------------------------


# importar csv ------------------------------------------------------------


# -------------------------------------------------------------------------

csvdt <- read.csv(file = "Base de datos/Date/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")

# importar tsv ------------------------------------------------------------

tsvdt <- read.delim("Base de datos/Date/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv")


# Importar excel ----------------------------------------------------------


install.packages("readxl")
library("readxl")
Excel <- read_excel("Base de datos/Date/LA MOLINA 2014 POTATO WUE (FB).xlsx")
install.packages("openxlsx")
library("openxlsx")

# Importar xlsx -----------------------------------------------------------

dtxsx <- read.xlsx("Base de datos/Date/LA MOLINA 2014 POTATO WUE (FB).xlsx"
                   , sheet = "fb")

# Importar Rstudio --------------------------------------------------------

library(readxl)
Fb<- read_excel("Base de datos/Date/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                                            sheet = "fb")
View(Fb)

# importar: de Google Sheeta ----------------------------------------------

install.packages("inti")
library("inti")
install.packages("googlesheets4")
library("googlesheets4")
url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"

gs <- as_sheets_id(url)

fb <- googlesheets4::range_read(ss = gs, sheet = "fb")


