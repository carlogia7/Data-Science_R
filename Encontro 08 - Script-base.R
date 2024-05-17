# CM3033 - Encontro 08 - Intervalos de confiança e testes de hipóteses
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2024
# SCRIPT DE APOIO À RESOLUÇÃO DO QUESTIONÁRIO NO CANVAS

# Leitura dos dados da pesquisa prévia
D <- read.csv("pesquisa.csv")

# Questão 1
# Determine o erro de estimação do valor médio populacional dos pesos (em kg), 
# arredondado para duas casas decimais.

mean(D$Peso) # Média da amostra 72.637
t.test(x = D$Peso)
erro_peso <-  (74.33327- 70.94223) / 2
round(erro_peso, 2)

# Questão 2
# O teste de hipóteses para determinar se "estudantes do IMT gastam, em média,
# menos de 40 minutos para chegar à escola" deve ter qual hipótese alternativa?

mean(D$Ida_IMT)
# Teste
# H0: u >= 40
# H1: u < 40

# Questão 3
# INSIRA AQUI O ENUNCIADO DA QUESTÃO, AS 
# INSTRUÇÕES PARA RESOLUÇÃO E A CONCLUSÃO
# DO TESTE. CONSULTE O SLIDE 17 DO MATERIAL.

IMC <- D$Peso/(D$Altura/100)^2
mean(IMC) # Média da amostra 23.521

t.test(x = IMC, mu = 25, alternative = 'less')

# H0: u >= 25
# H1: u < 25
