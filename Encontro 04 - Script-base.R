D <- read.csv("alunos.csv")

# Gráficos 
# Histogramas
hist(D$Altura)
hist(D$Peso)
hist(D$Idade)

# Boxplots
boxplot(D$Altura)
boxplot(D$Peso)
boxplot(D$Idade)

# Diagramas de dispersão
plot(x = D$Idade, y = D$Altura)
plot(D$Idade, D$Peso)
plot(D$Peso, D$Altura)

# Tabelas de contagem
table(D$Genero)
table(D$Municipio)
table(D$Genero, D$Municipio)
table(D$Genero, D$Altura)

# Gráfico de barras
barplot(table(D$Genero))
barplot(table(D$Municipio))
barplot(table(D$Genero, D$Municipio))

# Questionário

A <- c(126,131,116,125,134,120,125,150,130,149)
B <- c(141,145,162,129,127,133,129,140,131,133)
C <- c(134,136,130,134,120,129,147,126,117,143)
D <- c(129,132,128,126,127,122,111,148,120,117)
boxplot(A,B,C,D,names = c("A","B","C","D"))