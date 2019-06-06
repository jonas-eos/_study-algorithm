{*
 * Escreva um algoritmo que calcule e escreva a soma dos dez primeiros termos da seguinte série:
 * 2/500 - 5/450 + 2/400 - 5/350 + ...
 *}

algoritmo "serie_10_termos"
const
   ULTIMO_TERMO = 10
   PRIMEIRO_TERMO = 1
   DIVIDENDO_2 = 2
   DIVIDENDO_5 = 5
   DECREMENTO_DIVISOR = 50
   PRIMEIRO_DIVISOR = 500
   INCREMENTAL = 1
   FATOR_PAR = 2
   INICIALIZAR = 0

var
   adicao : logico
   termo : inteiro
   divisor : inteiro
   resultado : real

inicio
   adicao <- verdadeiro
   divisor <- PRIMEIRO_DIVISOR
   resultado <- INICIALIZAR

   para termo de PRIMEIRO_TERMO ate ULTIMO_TERMO passo INCREMENTAL faca
      se (adicao) entao
         resultado <- resultado + (DIVIDENDO_2 / divisor)
         adicao <- falso
      senao
         resultado <- resultado - (DIVIDENDO_5 / divisor)
         adicao <- verdadeiro
      fimse
      divisor <- divisor - DECREMENTO_DIVISOR
   fimpara

   escreval("Resultado: ", resultado)

fimalgoritmo