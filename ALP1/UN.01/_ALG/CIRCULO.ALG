Algoritmo "Circulo"
// Disciplina  : Algoritmo e logica de programacao I
// Professor   : Pietro
// Descrição   : Calcular area e perimetro de um circulo
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/06/2019
Var
   // Seção de Declarações das variáveis
   rArea, rPerimetro, rRaio : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   { Entrada }
   escreva("Informe o raio do circulo: ")
   leia(rRaio)

   limpatela

   { Processamento }

   // Area = PI * raio ^ 2
   rArea <- pi * exp(rRaio, 2)
   
   // Perimetro = 2 * PI * raio
   rPerimetro <- 2 * pi * rRaio

   { Saida }
   escreval("A area é: ", rArea)
   escreva("O perimetro é: ", rPerimetro)

Fimalgoritmo