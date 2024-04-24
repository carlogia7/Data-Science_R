# Encontro 02 - Arquivos de dados e scripts
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2024
# SCRIPT-BASE PARA AS ATIVIDADES DO ENCONTRO

# PARTE 1 - Cálculos básicos
# Atribuição de valores de rendimento
Rend <- c(0.92,0.8,0.91,0.89,0.83,0.72,
          0.8,0.69,0.63,0.71,0.61,0.68)

# a) Calcule o valor médio dos rendimentos

media_rendimentos = mean(Rend)
print(media_rendimentos)

# b) Repita o cálculo anterior, arredondando o resultado
# para 2 casas decimais: função "round"

round(media_rendimentos, 2)

# Atribuições de valores para cálculos
Peso <- c(74,58,70,65,108,68,82,75,77,81,57,
          71,99,75,70,60,79,74,75,78,73,61,75,
          75,70,85,56,68,64,65,75,83,80)

Altura <- c(175,156,172,168,191,168,179,175,174,179,160,
            170,188,180,177,163,188,180,179,176,175,165,
            183,170,169,178,166,165,175,167,180,181,181)

# c) Converta os valores das alturas para jardas
# e armazene o resultado na variável "Altura_j"

Altura_j = Altura/91.44 
print(Altura_j)

# d) Calcule o IMC médio da "amostra"
# IMC = Peso em kg/(Altura em metros)^2

IMC = Peso/(Altura/100)^2
print(IMC)
mean(IMC)

# ============================================================================ #
# ATENÇÃO: LIMPE O CONSOLE DO PROGRAMA E TODAS AS VARIÁVEIS CRIADAS!
# ============================================================================ #

# PARTE 2 - Arquivos de dados e dataframes
# a) Carregue os dados do arquivo "alunos.csv" em
# um dataframe chamado "D"

D = read.csv('alunos.csv')

# b) Determine as dimensões (número de linhas e colunas) do dataframe

nrow(D)
ncol(D)

# c) Calcule o valor da média das idades dos 55 estudantes

mean(D$Idade)

# d) Calcule o IMC médio da turma (55 estudantes)

IMC = D$Peso / (D$Altura/100)^2
mean(IMC)

# =============================== QUESTIONÁRIO =============================== #

media_altura = mean(D$Altura)
round(media_altura/30.48,1) 

# =============================== FIM DO SCRIPT ============================== #