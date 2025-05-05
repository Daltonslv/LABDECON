# Instalar pacotes (se necessário)
install.packages("WDI")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("plotly")

# Carregar pacotes
library(WDI)
library(ggplot2)
library(dplyr)

# Códigos dos países da América do Sul
paises_amsul <- c("AR", "BO", "BR", "CL", "CO", "EC", "GY", "PY", "PE", "SR", "UY", "VE")

# Baixar dados de 2000 a 2023
dadosfert_amsul <- WDI(country = paises_amsul,
                       indicator = "SP.ADO.TFRT",
                       start = 2000, end = 2023,
                       extra = TRUE)

# Remover valores faltantes
dadosfert_amsul <- na.omit(dadosfert_amsul)

# Gráfico de barras com facetas por país
ggplot(dadosfert_amsul, aes(x = year, y = SP.ADO.TFRT, fill = country)) +
  geom_col() +
  facet_wrap(~ country, scales = "free_y") +
  labs(
    title = "Taxa de Fertilidade na América do Sul (2000–2023)",
    x = "Ano",
    y = "Filhos por mulher"
  ) +
  theme_minimal(base_size = 11) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "none"
  )


________________________________________________________________

# Códigos dos países da América do Sul
paises_amsul <- c("AR", "BO", "BR", "CL", "CO", "EC", "GY", "PY", "PE", "SR", "UY", "VE")

# Baixar dados apenas de 2023
dadosfert_2023 <- WDI(country = paises_amsul,
                      indicator = "SP.ADO.TFRT",
                      start = 2023, end = 2023,
                      extra = TRUE)

# Remover valores faltantes
dadosfert_2023 <- na.omit(dadosfert_2023)

# Ordenar países pela taxa de fertilidade
dadosfert_2023 <- dadosfert_2023 %>%
  arrange(desc(SP.ADO.TFRT)) %>%
  mutate(country = factor(country, levels = country))

# Gráfico de barras (um único painel)
ggplot(dadosfert_2023, aes(x = country, y = SP.ADO.TFRT, fill = country)) +
  geom_col() +
  labs(
    title = "Taxa de Fertilidade na América do Sul (2023)",
    x = "País",
    y = "Filhos por mulher"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.position = "none"
  )


________________________________________________________________________

# Baixar dados do Brasil de 2000 a 2023
dadosfert_br <- WDI(country = 'BR',
                    indicator = 'SP.ADO.TFRT',
                    start = 2000, end = 2023)

# Remover valores faltantes
dadosfert_br <- na.omit(dadosfert_br)

# Gráfico de barras com números
ggplot(dadosfert_br, aes(x = factor(year), y = SP.ADO.TFRT, fill = year)) +
  geom_col(show.legend = FALSE) +  # Barra com preenchimento
  scale_fill_viridis_c() +  # Usando a paleta viridis para cores vibrantes
  geom_text(aes(label = round(SP.ADO.TFRT, 2)), vjust = -0.5, size = 4) +  # Adicionando os números acima das barras
  labs(
    title = "Evolução da Taxa de Fertilidade no Brasil (2000–2023)",
    subtitle = "Taxa de fertilidade total (filhos por mulher)",
    x = "Ano",
    y = "Filhos por mulher",
    caption = "Fonte: Banco Mundial - WDI"
  ) +
  theme_minimal(base_size = 14) +  # Tema minimalista
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16),
    plot.subtitle = element_text(hjust = 0.5, size = 12, face = "italic"),
    axis.text.x = element_text(angle = 45, hjust = 1),  # Rótulos no eixo X mais legíveis
    axis.text.y = element_text(size = 12),  # Tamanho do texto do eixo Y
    plot.caption = element_text(hjust = 1, size = 10),
    panel.grid.major = element_blank(),  # Remove as linhas de grade
    panel.grid.minor = element_blank()   # Remove as linhas de grade menores
  )

_____________________________________________


# Baixar dados do Brasil de 2000 a 2023
dadosfert_br <- WDI(country = 'BR',
                    indicator = 'SP.ADO.TFRT',
                    start = 2000, end = 2023)

# Remover valores faltantes
dadosfert_br <- na.omit(dadosfert_br)

# Gráfico de barras com números
ggplot(dadosfert_br, aes(x = factor(year), y = SP.ADO.TFRT, fill = year)) +
  geom_col(show.legend = FALSE) +  # Barra com preenchimento
  scale_fill_viridis_c() +  # Usando a paleta viridis para cores vibrantes
  geom_text(aes(label = round(SP.ADO.TFRT, 2)), vjust = -0.5, size = 4) +  # Adicionando os números acima das barras
  labs(
    title = "Evolução da Taxa de Fertilidade no Brasil (2000–2023)",
    subtitle = "Taxa de fertilidade total (filhos por mulher)",
    x = "Ano",
    y = "Filhos por mulher",
    caption = "Fonte: Banco Mundial - WDI"
  ) +
  theme_minimal(base_size = 14) +  # Tema minimalista
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16),
    plot.subtitle = element_text(hjust = 0.5, size = 12, face = "italic"),
    axis.text.x = element_text(angle = 45, hjust = 1),  # Rótulos no eixo X mais legíveis
    axis.text.y = element_text(size = 12),  # Tamanho do texto do eixo Y
    plot.caption = element_text(hjust = 1, size = 10),
    panel.grid.major = element_blank(),  # Remove as linhas de grade
    panel.grid.minor = element_blank()   # Remove as linhas de grade menores
  )



