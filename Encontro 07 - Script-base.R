# CM3033 - Encontro 07 - Ajustes gráficos básicos em linguagem R
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2024
# SCRIPT DE APOIO À RESOLUÇÃO DO QUESTIONÁRIO NO CANVAS

# Leitura dos dados e exibição da estrutura do dataframe
D <- read.csv("pesquisa.csv")
str(D)

# Questão/gráfico 1
# Crie um gráfico que ajude a identificar a possível relação entre 
# os pesos e os gastos com alimentação da amostra, garantindo que 
# as escalas dos dois eixos comecem em 0. Ajustes gráficos 
# adicionais: título, rótulos do eixos e símbolos dos marcadores.

plot(x = D$Peso,y = D$Alimentacao,main = "Peso x Alimentação", pch = 16,
     xlab = "Peso (kg)",ylab = "Alimentação (R$)", xlim = c(0,150), 
     ylim = c(0,200), col="blue")

# Questão/gráfico 2
# Crie um gráfico que permita avaliar o perfil da distribuição dos 
# tempos de volta do IMT, em 6 faixas de contagem. Ajustes gráficos 
# adicionais: título, rótulos dos eixos e cores das barras.

hist(D$Volta_IMT, main = "Tempo de volta do IMT", xlab = "Tempo em min", 
     ylab = "", col = "cyan", border = "blue", breaks = 6)

# Questão/gráfico 3
# Crie um gráfico que permita avaliar se a distância entre a residência e
# o IMT parece ter relação com o fato de a pessoa residir, ou não, na região
# do Grande ABC, usando cores diferentes para cada categoria. Ajustes
# gráficos adicionais: título, rótulos dos eixos e nomes das categorias.

boxplot(D$Distancia~D$ABC, main = "Distância entre residência e IMT", 
        xlab = "Mora no ABC", ylab = "Distância em km", 
        col = c("wheat", "azure"))

# Questão/gráfico 4
# Represente as contagens dos graus de familiaridade da turma com o 
# conceito estatístico de quartil usando barras verticais "próximas" 
# (5% da largura das barras). No rótulo de cada categoria, ao invés 
# da escala numérica (1, 2, 3), exiba os textos correspondentes: 
# "Não conhece", "Conhece pouco", "Conhece bem". Ajuste o título do gráfico 
# para "Conceito de quartil". Desafio: elimine as bordas das barras de contagem.

TAB_Fam_Q <- table(D$Fam_Quartil)
barplot(TAB_Fam_Q, names.arg = c("Não conhece", "Conhece pouco", "Conhece bem"),
        space = 0.05, border = NA, main = "Conceito Quartil")
