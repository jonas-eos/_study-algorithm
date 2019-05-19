Algoritmo "Quadrado"
// Disciplina  :  Algoritmo e Logica de programacao I
// Professor   : Pietro
// Descrição   : Calcular area e perimetro de um quadrado
// Autor(a)    : Jonas Evangelista
// Data atual  : 5/5/2019
Var
   // Seção de Declarações das variáveis
   rLado, rArea, rPerimetro : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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