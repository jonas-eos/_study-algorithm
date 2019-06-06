{*
 * Elabore um algoritmo que determine o valor de S, em que:
 * S = 1/1 - 2/4 + 3/9 - 4/16 + 5/25 - 6/36 ... -10/100
 *}

algoritmo "serie_s"
const
   NUMERO_INICIAL = 1
   DIVISOR_FINAL = 100
   DIVIDENDO_FINAL = 10
   INCREMENTO_DIVIDENDO = 1
   FATOR_PAR = 2
   SEM_RESTO = 0

var
   s : real
   divisor : inteiro
   dividendo : inteiro

inicio
   divisor <- NUMERO_INICIAL
   dividendo <- NUMERO_INICIAL
   s <- dividendo / divisor

   enquanto (divisor <> DIVIDENDO_FINAL) e (dividendo <> DIVIDENDO_FINAL) faca
      dividendo <- dividendo + INCREMENTO_DIVIDENDO
      divisor <- dividendo * dividendo

      se (dividendo mod FATOR_PAR = SEM_RESTO) entao
         s <- s - dividendo / divisor
      senao
         s <- s + dividendo / divisor
      fimse
   fimenquanto

   escreval("Resultado: ", s)

fimalgoritmo