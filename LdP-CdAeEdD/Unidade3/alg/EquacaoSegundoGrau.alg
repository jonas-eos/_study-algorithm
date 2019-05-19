Algoritmo "EquacaoSegundoGrau"
// Disciplina  :  -
// Professor   :  -
// Descrição   :  Calcular equacao de segundo grau
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/07/2019
Var
   // Seção de Declarações das variáveis
   iVlrA, iVlrB, iVlrC : inteiro
   rDelta, rX1, rX2 : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   { Entrada }
   escreva("Informe valor de A ")
   leia(iVlrA)
   escreva("Informe Valor de B ")
   leia(iVlrB)
   escreva("Informe valor de C")
   leia(iVlrC)

   limpatela

   { Processamento }

   // Delta = ((b ^ 2) - 4ab)
   rDelta <- (exp(iVlrB,2) - 4 * iVlrA * iVlrC)

   // X1 = ((-b + raiz_quadrada(Delta))/(2a))
   rX1 <- ((iVlrB * -1) + raizq(rDelta)) / (2 * iVlrA)

   // X2 = ((-b-+ raiz_quadrada(Delta))/(2a))
   rX2 <- ((iVlrB * -1) - raizq(rDelta))/(2 * iVlrA)

   { Saida }
   escreva("O resultado de ")
   escreval(iVlrA, "X^2 + ", iVlrB, "X + ", iVlrC)
   escreval("X1 = ",rX1)
   escreva("X2 = ", rX2)


Fimalgoritmo