Algoritmo "Quadrado"
// Disciplina  :  Algoritmo e Logica de programacao I
// Professor   : Pietro
// Descri��o   : Calcular area e perimetro de um quadrado
// Autor(a)    : Jonas Evangelista
// Data atual  : 5/5/2019
Var
   // Se��o de Declara��es das vari�veis
   rLado, rArea, rPerimetro : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe a Altura ou base do quadrado: ")
   leia(rLado)

   { Processamento }
   
   // area = Base * Altura
   rArea <- exp(rLado,2)
   // Perimetro = 2 * lado + 2 * Base
   rPerimetro <- 4 * rLado

   limpatela

   { Saida }
   escreval("Area: ", rArea)
   escreval("Perimetro: ", rPerimetro)

Fimalgoritmo