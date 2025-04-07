# Carregar pacotes necessários
library(ggplot2)
library(WDI)

# Coletar os dados
Renda_nacional_liquida_ajustada <- WDI(country = 'all', 
                                       indicator = 'NY.ADJ.NNTY.KD.ZG')

# Criar gráfico moderno
grafpainel <- ggplot(data = Renda_nacional_liquida_ajustada, 
                     mapping = aes(x = year, y = NY.ADJ.NNTY.KD.ZG)) +
  geom_point(aes(color = country), size = 2, alpha = 0.6) +  # Pontos com cores por país
  scale_color_manual(values = c("Brazil" = "red", "other" = "blue")) + # Dados do Brasil em vermelho, outros países em azul
  labs(title = "Renda Nacional Líquida Ajustada (Crescimento Anual)",  # Título do gráfico
       x = "Ano",  # Renomear eixo X
       y = "PIB (%)",  # Renomear eixo Y
       color = "País") +  # Legenda para a cor
  theme_minimal() +  # Tema minimalista para um visual moderno
  theme(legend.position = "bottom",  # Colocar legenda na parte inferior
        plot.title = element_text(hjust = 0.5, size = 16),  # Centralizar título e definir tamanho
        axis.title = element_text(size = 14),  # Ajustar tamanho dos eixos
        axis.text = element_text(size = 12))  # Ajustar tamanho dos textos dos eixos

# Mostrar o gráfico
print(grafpainel)

# Carregar pacotes necessários
library(ggplot2)
library(WDI)
library(dplyr)

# Coletar os dados
Renda_nacional_liquida_ajustada <- WDI(country = 'all', 
                                       indicator = 'NY.ADJ.NNTY.KD.ZG')

# Criar uma nova coluna para definir se o país é o Brasil ou outro
Renda_nacional_liquida_ajustada <- Renda_nacional_liquida_ajustada %>%
  mutate(country_type = ifelse(country == "Brazil", "Brazil", "Other"))

# Criar gráfico moderno
grafpainel <- ggplot(data = Renda_nacional_liquida_ajustada, 
                     mapping = aes(x = year, y = NY.ADJ.NNTY.KD.ZG)) +
  geom_point(aes(color = country_type), size = 2, alpha = 0.6) +  # Pontos com cores por país
  scale_color_manual(values = c("Brazil" = "red", "Other" = "blue")) + # Dados do Brasil em vermelho, outros países em azul
  labs(title = "Renda Nacional Líquida Ajustada (Crescimento Anual)",  # Título do gráfico
       x = "Ano",  # Renomear eixo X
       y = "Crescimento (%)",  # Renomear eixo Y
       color = "País") +  # Legenda para a cor
  theme_minimal() +  # Tema minimalista para um visual moderno
  theme(legend.position = "bottom",  # Colocar legenda na parte inferior
        plot.title = element_text(hjust = 0.5, size = 16),  # Centralizar título e definir tamanho
        axis.title = element_text(size = 14),  # Ajustar tamanho dos eixos
        axis.text = element_text(size = 12))  # Ajustar tamanho dos textos dos eixos

# Mostrar o gráfico
print(grafpainel)

library(ggplot2)
library(dplyr)

# Supondo que 'Poupança ajustada: poupança nacional líquida' seja o seu dataframe
# E que 'Poupança ajustada: poupança nacional líquida' tenha as colunas: 
# 'country', 'year', e 'NY.ADJ.NNAT.CD'.

# Primeiro, criamos uma coluna que indica se o país é o Brasil para poder colorir diferentemente
Poupança_ajustada <- Poupança_ajustada %>%
  mutate(is_brazil = ifelse(country == "Brazil", "Brasil", "Outro"))

# Criando o gráfico
grafpainel <- ggplot(data = Poupança_ajustada,
                     mapping = aes(x = year, y = NY.ADJ.NNAT.CD, color = is_brazil)) +
  geom_point(size = 3) +  # Adicionando pontos
  scale_color_manual(values = c("Outro" = "#4CAF50", "Brasil" = "red")) +  # Cores modernas e Brasil em vermelho
  labs(title = "Poupança Nacional Líquida Ajustada ao Longo dos Anos",
       x = "Ano",
       y = "PIB",
       color = "País") +
  theme_minimal() +  # Tema moderno e limpo
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Melhorando a legibilidade do eixo X

# Exibindo o gráfico
print(grafpainel)

library(ggplot2)
library(dplyr)

# Supondo que 'Poupança ajustada: poupança nacional líquida' seja o seu dataframe
# E que 'Poupança ajustada: poupança nacional líquida' tenha as colunas: 
# 'country', 'year', e 'NY.ADJ.NNAT.CD'.

# Primeiro, criamos uma coluna que indica se o país é o Brasil para poder colorir diferentemente
Poupança_ajustada <- Poupança_ajustada %>%
  mutate(is_brazil = ifelse(country == "Brazil", "Brasil", "Outro"))

# Criando o gráfico
grafpainel <- ggplot(data = Poupança_ajustada,
                     mapping = aes(x = year, y = NY.ADJ.NNAT.CD, color = is_brazil)) +
  geom_point(size = 3) +  # Adicionando pontos
  scale_color_manual(values = c("Outro" = "#4CAF50", "Brasil" = "red")) +  # Cores modernas e Brasil em vermelho
  labs(title = "Poupança Nacional Líquida Ajustada ao Longo dos Anos",
       x = "Ano",
       y = "PIB (Poupança Nacional Líquida Ajustada)",
       color = "País") +
  theme_minimal() +  # Tema moderno e limpo
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Melhorando a legibilidade do eixo X

# Exibindo o gráfico
print(grafpainel)
