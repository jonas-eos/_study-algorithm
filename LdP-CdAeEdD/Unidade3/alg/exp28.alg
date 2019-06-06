{*
 * Construa um algoritmo que calcule o valor dos dez primeiros termos da série H, em que:
 * H = 1/pot(1,3) - 1/pot(3,3) + 1/pot(5,3) - 1/pot(7,3) + 1/pot(9,3)...
 *}
 
 algoritmo "serie_h"
 const
   DIVIDENDO = 1
   INCREMENTO_BASE_POTENCIA_DIVISOR = 2 
   BASE_POTENCIA_INICIAL = 1
   CUBO = 3
   PRIMEIRO_TERMO = 1
   ULTIMO_TERMO = 10
   INCREMENTAL = 1
   SEM_VALOR = 0

var
   adicao : logico
   termo : inteiro
   basePotenciaDivisor : real
   h : real

inicio
   adicao <- verdadeiro
   h <- SEM_VALOR
   basePotenciaDivisor <- BASE_POTENCIA_INICIAL

   para termo de PRIMEIRO_TERMO ate ULTIMO_TERMO passo INCREMENTAL faca
      se (adicao) entao
         h <- h + (DIVIDENDO / exp(basePotenciaDivisor, CUBO))
         adicao <- falso
      senao
         h <- h - DIVIDENDO / exp(basePotenciaDivisor, CUBO))
         adicao <- verdadeiro
      fimse
      basePotenciaDivisor <- basePotenciaDivisor + INCREMENTO_BASE_POTENCIA_DIVISOR
   fimpara

   escreval("Resultado: ", h)
   
fimalgoritmo