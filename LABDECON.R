# Aula 3
install.packages("tidyverse")

#install.packages("WDI")
library(WDI)

# BAIXAR OS DADOS DO PIB ( PRODUTO INTERNO BRUTO )
# TUDO QUE É PRODUZIDO EM UM PAÍS/ESTADO/MUN.
# EM UM DETERMINADO PERÍODO

#	GDP (current US$)(NY.GDP.MKTP.CD)
# GROSS DOMESTIC PRODUCT (GDP) EM DÓLARES NORTE-AMERICAMOS
# CÓDIGO NY.GDP.MKTP.CD

COD_GDP<- WDISEARCH('GDP')
# É IMPORTANTE PROCURAR PELO PRÓPRIO
# SITE DO BANCO MUNDIAL, É MAIS
# EFICIENTE 

# COM O CÓDIGO, VAMOS BAIXAR OS DADOS

options(scipen = 999)

basepib<- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD')

basepib2023<- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD', start = 2023, end = 2023)

# DADOS EM PAINEL

dadospibbr <- WDI (country = 'all',indicator = 'NY.GDP.MKTP.CD')

# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD', start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadospibbr <- WDI (country = 'BR', indicator = 'NY.GDP.MKTP.CD')
