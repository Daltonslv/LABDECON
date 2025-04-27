
library(WDI)

#Taxa de Fertilidade Adolescente China

# DADOS EM PAINEL - Taxa de Fertilidade Adolescente para todos os países
dadosfertilidade_painel <- WDI(country = 'all', indicator = 'SP.ADO.TFRT')

# CORTE TRANSVERSAL - Taxa de Fertilidade Adolescente em 2023
dadosfertilidade_2023 <- WDI(country = 'all', indicator = 'SP.ADO.TFRT', start = 2023, end = 2023)

# SÉRIE TEMPORAL - Taxa de Fertilidade Adolescente na China
dadosfertilidade_cn <- WDI(country = 'CN', indicator = 'SP.ADO.TFRT')



#Emissões de CO2 por passageiro-quilômetro no transporte aéreo Argentina

# Painel de dados sobre emissões de CO2 por passageiro-quilômetro no transporte aéreo para todos os países
dadosair_painel <- WDI(country = 'all', indicator = 'IS.AIR.PSGR')

# Corte transversal para 2024 sobre emissões de CO2 por passageiro-quilômetro no transporte aéreo
dadosair_2024 <- WDI(country = 'all', indicator = 'IS.AIR.PSGR', start = 2024, end = 2024)

# Série temporal para a Argentina sobre emissões de CO2 por passageiro-quilômetro no transporte aéreo
dadosair_ar <- WDI(country = 'AR', indicator = 'IS.AIR.PSGR')


# Percentual de empresas com financiamento externo para a França 

# Painel de dados sobre empresas com financiamento externo para todos os países
dadosfin_painel <- WDI(country = 'all', indicator = 'FB.AST.NPER.ZS')

# Corte transversal para 2024 sobre empresas com financiamento externo
dadosfin_2024 <- WDI(country = 'all', indicator = 'FB.AST.NPER.ZS', start = 2024, end = 2024)

# Série temporal para a França sobre empresas com financiamento externo
dadosfin_fr <- WDI(country = 'FR', indicator = 'FB.AST.NPER.ZS')
