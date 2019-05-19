Algoritmo "CalculoDistancia"
// Disciplina  : -
// Professor   : -
// Descrição   : Calcular a distancia de dois pontos
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/07/2019
Var
   // Seção de Declarações das variáveis
   rDist, rP1PosX, rP1Posy, rP2Posx, rP2Posy : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   { Entrada }
   escreva("Informe Posicao x do ponto 1: ")
   leia(rP1PosX)
   escreva("Informe Posicao x do ponto 2: ")
   leia(rP2PosX)
   escreva("Informe Posicao y do ponto 1: ")
   leia(rP1PosY)
   escreva("Informe Posicao y do ponto 2: ")
   leia(rP2PosY)

   limpatela

   { Processamento }
   
   // distancia = raiz de ((x2 - x1) ^ 2) + ((y2 - y1) ^2))
   rDist <- raizq(exp((rP2PosX - rP1PosX), 2) + exp((rP2PosY + rP1PosY), 2))

   { Saida }
   escreva("A distancia e: ", rDist)

Fimalgoritmo