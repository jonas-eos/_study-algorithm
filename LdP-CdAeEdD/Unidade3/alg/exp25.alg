{* 
 * Prepare um algoritmo que calcule o valor de H
 * sendo que ele é determinado pela série
 * H = 1/1 + 3/2 + 5/3 + 7/4 + ... + 99/50
 *}

algoritmo "serie"
const
   DIVIDENDO_FINAL = 99
   DIVISOR_FINAL = 50
   NUMERO_INICIAL = 1
   INCREMENTO_DIVISOR = 2
   INCREMENTO_DIVIDENDO = 1

var
   h : real
   dividendo : inteiro
   divisor : inteiro
inicio
   dividendo <-  NUMERO_INICIAL
   divisor <- NUMERO_INICIAL
   h <- dividendo / divisor

   repita
      dividendo <- dividendo + INCREMENTO_DIVISOR
      divisor <- divisor + INCREMENTO_DIVIDENDO
      h <- h + (dividendo / divisor)
   ate (dividendo = DIVIDENDO_FINAL) e (divisor = DIVISOR_FINAL)

   escreval("Resultado final: ", h)
fimalgoritmo