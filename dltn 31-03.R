# API (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADA, ACESSAMOS OS DADOS DO PIB
# PRODUTO INTERNO BRUTO

library(WDI) # CARREGAR A BIBLIOTECA/PACOTE
#install.packages("WDI")

options(scipen = 999) # AJUSTA A NOT. CIENT.

# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')
# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)
# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')
# Fazer Graficos
#gglot2 ( faz parte do pacote tidyverse)

#install.packages("tidyverse")
library(tidyverse)
# Dados em painel
grafpainel <- ggplot(dadospib, mapping = aes (y = NY.GDP.MKTP.CD,
                                              x = year)) +
geom_point()

print(grafcorte)

# corte transversal

grafpainel <- ggplot(dadospib2023, mapping = aes (y = NY.GDP.MKTP.CD,
                                              x = year)) +
geom_point()

print(grafcorte)

# corte transversal
 
grafserie <-  ggplot(dadospibbr, mapping = aes (y = NY.GDP.MKTP.CD,
                                                  x = year)) +
  geom_line()
print(grafserie)

#Exercicio Teste
dadospibbr2020 <- WDI(country="BR", indicator="NY.GDP.MKTP.CD",
                      start= 2020, end= 2023)
grafexemplo <- ggplot(dadospibbr2020,
                      mapping = aes(y = NY.GDP.MKTP.CD,
                                    x = year))+
  geom_line(color = "red")

print(grafexemplo)


  
