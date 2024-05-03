# CM3033 - Encontro 06 - Análise Exploratória de Dados - Parte 2
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2024
# SCRIPT-BASE PARA AS ATIVIDADES DO ENCONTRO

# Leitura dos dados
D <- read.csv("pesquisa.csv")

# Questão 1
# Qual é a média das idades das pessoas que já viajaram ao exterior?
# Forneça sua resposta arredondada para uma casa decimal.
viajou_exterior <- D[D$Exterior == "SIM",]
media_idade <- mean(viajou_exterior$Idade)
media_idade <- round(media_idade, 1)
print(paste("A média é", media_idade))
# OU
by(data = D$Idade, INDICES = D$Exterior, FUN = mean)
# Questão 2
# Parece haver algum tipo de relação entre os pesos e os gastos com alimentação da amostra?
plot(D$Peso, D$Alimentacao)

# Questão 3
# As idades parecem ter relação com o gênero da pessoa?
boxplot(D$Idade~D$Genero)

# Questão 4
# Classifique a afirmação: "A proporção de rapazes e moças que já viajaram para fora do país é 
# 'significativamente' diferente (mais de 5% de diferença entre os grupos)".
table(D$Genero, D$Exterior)

# Questão 5 e 6
# DataReporter
makeDataReport(data = D, output = "html", file = "Relatorio.html")
