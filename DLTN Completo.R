# Instalar os pacotes se ainda não tiver
install.packages("WDI")
install.packages("ggplot2")

# Carregar os pacotes
library(WDI)
library(ggplot2)

# Dados em painel: Taxa de fertilidade de todos os países para todos os anos
dadosfertilidade <- WDI(country = 'all',
                        indicator = 'SP.ADO.TFRT')

# Corte transversal: Taxa de fertilidade de todos os países somente para 2023
dadosfertilidade2023 <- WDI(country = 'all',
                            indicator = 'SP.ADO.TFRT',
                            start = 2023, end = 2023)

# Série temporal: Taxa de fertilidade do Brasil
dadosfertilidadebr <- WDI(country = 'BR',
                          indicator = 'SP.ADO.TFRT')

# Gráfico da taxa de fertilidade no Brasil
ggplot(dadosfertilidadebr, aes(x = year, y = SP.ADO.TFRT)) +
  geom_line(color = "purple") +
  geom_point(color = "orange") +
  labs(title = "Taxa de Fertilidade no Brasil ao longo do tempo",
       x = "Ano",
       y = "Número de filhos por mulher") +
  theme_minimal()



#________________________________________________________________



# Dados em painel: Passageiros aéreos de todos os países para todos os anos
dadospassageiros <- WDI(country = 'all',
                        indicator = 'IS.AIR.PSGR')

# Corte transversal: Passageiros aéreos de todos os países somente para 2023
dadospassageiros2023 <- WDI(country = 'all',
                            indicator = 'IS.AIR.PSGR',
                            start = 2023, end = 2023)

# Série temporal: Passageiros aéreos do Brasil
dadospassageirosbr <- WDI(country = 'BR',
                          indicator = 'IS.AIR.PSGR')

# Gráfico do número de passageiros aéreos no Brasil
ggplot(dadospassageirosbr, aes(x = year, y = IS.AIR.PSGR)) +
  geom_line(color = "darkgreen") +
  geom_point(color = "red") +
  labs(title = "Número de Passageiros Aéreos no Brasil ao longo do tempo",
       x = "Ano",
       y = "Passageiros (pessoas)") +
  theme_minimal()



#________________________________________________________________



# Dados em painel: Ativos de instituições financeiras não bancárias (% do PIB) para todos os países
dadosativos <- WDI(country = 'all',
                   indicator = 'FB.AST.NPER.ZS')

# Corte transversal: Ativos de instituições financeiras não bancárias em 2023
dadosativos2023 <- WDI(country = 'all',
                       indicator = 'FB.AST.NPER.ZS',
                       start = 2023, end = 2023)

# Série temporal: Ativos de instituições financeiras não bancárias no Brasil
dadosativosbr <- WDI(country = 'BR',
                     indicator = 'FB.AST.NPER.ZS')

# Gráfico dos ativos financeiros não bancários (% do PIB) no Brasil
ggplot(dadosativosbr, aes(x = year, y = FB.AST.NPER.ZS)) +
  geom_line(color = "darkblue") +
  geom_point(color = "gold") +
  labs(title = "Ativos de Instituições Financeiras Não Bancárias (% do PIB) no Brasil",
       x = "Ano",
       y = "Ativos (% do PIB)") +
  theme_minimal()

