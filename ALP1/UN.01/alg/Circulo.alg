Algoritmo "Circulo"
// Disciplina  : Algoritmo e logica de programacao I
// Professor   : Pietro
// Descri��o   : Calcular area e perimetro de um circulo
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/06/2019
Var
   // Se��o de Declara��es das vari�veis
   rArea, rPerimetro, rRaio : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
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
   escreval("A area �: ", rArea)
   escreva("O perimetro �: ", rPerimetro)

Fimalgoritmo