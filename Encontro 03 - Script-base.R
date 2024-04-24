# Encontro 03 - Medidas de posição e de dispersão
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2024
# SCRIPT-BASE PARA AS ATIVIDADES DO ENCONTRO

# PARTE 1 - Rendimentos
Rend <- c(0.92,0.8,0.91,0.89,0.83,0.72,
          0.8,0.69,0.63,0.71,0.61,0.68)

# Medidas de posição
mean(Rend)
median(Rend)
quantile(Rend)
quantile(Rend, 0.14) # Porcentagem específica

# Medidas de dispersão
R <- max(Rend) - min(Rend)
print(R)

var(Rend) # Variância
sd(Rend) # Desvio Padrão (standart deviation)
CV <- 100*sd(Rend)/mean(Rend)
round(CV,2)

# ============================================================================ #
# ATENÇÃO: LIMPE O CONSOLE DO PROGRAMA E TODAS AS VARIÁVEIS CRIADAS!
# ============================================================================ #

# PARTE 2 - Questionário
# Carregue os dados do arquivo "alunos.csv" em um dataframe.
# Em seguida, insira ABAIXO as instruções que calculam o que
# se pede no questionário do Encontro 03

D <- read.csv("alunos.csv")

max(D$Altura)

PM <- mean(D$Altura)
round(PM,1)

CV <- 100*sd(D$Altura)/mean(D$Altura)
round(CV,2)
# =============================== FIM DO SCRIPT ============================== #