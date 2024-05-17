# Neste exercício, utilizaremos uma base de dados pronta da biblioteca datasets do R.

data(Titanic)
str(Titanic)
# ?Titanic

Titanic_df <- as.data.frame(Titanic)

# 1 – Imprima as amostras (linhas) apenas dos passageiros do sexo feminino.

Titanic_f <- subset(Titanic_df, Sex == 'Female')

# 2 – Quais os passageiros da terceira classe (3rd) que sobreviveram?

Titanic_3rd_survived <- subset(Titanic_df, Survived == 'Yes' & Class == '3rd')

# 3 – Quantos passageiros adultos sobreviveram em cada classe (1st, 2nd, 3rd e Crew)?

Titanic_adult_class <- subset(Titanic_df, Age == 'Adult' & Survived == 'Yes')
table(Titanic_adult_class$Class)

# 4 – Quantos passageiros do sexo masculino adultos estavam a bordo em cada classe?

Titanic_adult_male_class <- subset(Titanic_df, Age == 'Adult' & Sex == 'Male')
table(Titanic_adult_male_class$Class)

# 5 – Quantos passageiros do sexo feminino adultos sobreviveram em cada classe?

Titanic_adult_f_survived <- subset(Titanic_df, Sex == 'Female' & Age == 'Adult' & Survived == 'Yes')
table(Titanic_adult_f_survived$Class)
  