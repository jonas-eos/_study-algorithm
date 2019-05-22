{*
 * Descrição           Calcular a distancia de dois pontos
 *
 * @pacote             LdP-CdAeEdD\Unidade3
 * @autor              Jonas Evangelista (jonas.eos@outlook.com)
 * @desde              05/07/2019
 * @ver                v2.0.0
 *----------------------------------------------------------------------------*}
Algoritmo "CalculoDistancia"

Var
   distanciaDeDoisPontos : real
   ponto1PosicaoX, ponto1PosicaoY ,ponto2PosicaoX, ponto2PosicaoY : real
   potenciaPosicaoX : real
   potenciaPosicaoY : real

Inicio

   {*------------------------------------------------------------------------*}

   {* Entrada *}
   escreva("Informe Posicao x do ponto 1: ")
   leia(ponto1PosicaoX)
   escreva("Informe Posicao x do ponto 2: ")
   leia(ponto2PosicaoX)
   escreva("Informe Posicao y do ponto 1: ")
   leia(ponto1PosicaoY)
   escreva("Informe Posicao y do ponto 2: ")
   leia(ponto2PosicaoY)

   limpatela

   {*------------------------------------------------------------------------*}

   {* Processamento *}
   
   potenciaPosicaoX <- exp((ponto2PosicaoX - ponto1PosicaoX), 2)
   potenciaPosicaoY <- exp((ponto2PosicaoY - ponto1PosicaoY), 2)
   distanciaDeDoisPontos <- raizq(potenciaPosicaoX + potenciaPosicaoY)

   {*------------------------------------------------------------------------*}

   {* Processamento *}
   escreva("A distancia e: ", distanciaDeDoisPontos)

Fimalgoritmo