{* 
 * Escreva um algoritmo que imprima todas as possiblidades de que no lançamento
 * de dois dados tenhamos o valor 7 como resultado da soma dos valores de
 * cada dado.
*}

algoritmo "soma_7"
const
   SOMA_7 = 7
   PRIMEIRO_NUMERO = 1
   ULTIMO_NUMERO = 6
   INCREMENTO = 1

var
   dado1 : inteiro
   dado2 : inteiro
   possibilidades : inteiro
   contador : inteiro
   chance : real

inicio

   possibilidades <- 0
   contador <- 0

   para dado1 de PRIMEIRO_NUMERO ate ULTIMO_NUMERO passo INCREMENTO faca
      para dado2 de PRIMEIRO_NUMERO ate ULTIMO_NUMERO passo INCREMENTO faca
         contador <- contador + 1
         se(dado1 + dado2 = SOMA_7) entao
            possibilidades <- possibilidades + 1
            escreval(numpcarac(dado1) + " + " + numpcarac(dado2) + " = 7")
         fimse
      fimpara
   fimpara
   
   chance <- (possibilidades * 100) / contador
   escreval("Possibilidades: " + numpcarac(possibilidades) + " de " + numpcarac(contador))
   escreval("Chances: " + numpcarac(chance))

fimalgoritmo