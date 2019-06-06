{* 
 * Prepare um algoritmo que calcule o valor de H
 * sendo que ele é determinado pela série
 * H = 1/1 + 3/2 + 5/3 + 7/4 + ... + 99/50
 *}

algoritmo "serie"
const
   DIVISOR_FINAL = 99
   DIVIDENDO_FINAL = 50
   NUMERO_INICIAL = 1
   INCREMENTO_DIVISOR = 2
   INCREMENTO_DIVIDENDO = 1

var
   h : real
   divisor : inteiro
   dividendo : inteiro
inicio
   divisor <-  NUMERO_INICIAL
   dividendo <- NUMERO_INICIAL
   h <- divisor / dividendo

   repita
      divisor <- divisor + INCREMENTO_DIVISOR
      dividendo <- dividendo + INCREMENTO_DIVIDENDO
      h <- h + (divisor / dividendo)
   ate (divisor = DIVISOR_FINAL) e (dividendo = DIVIDENDO_FINAL)

   escreval("Resultado final: ", h)
fimalgoritmo