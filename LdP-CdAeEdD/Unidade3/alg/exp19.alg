{*
 * A conversão de graus Fahrenheit para centígrados é obtida pela fórmula
 * C = 5/9(F - 32).
 * Escreva um algoritmo que calcule e escreva uma tabela de graus centígrados
 * em função de graus Fahrenheit que variem de 50 a 150 de 1 em 1
*}

algoritmo "coversao_f_c"

const
   FAHRENHEIT_INICIAL = 50
   FAHRENHEIT_FINAL = 150
   INCREMENTO = 1

var
   contador : inteiro
   convertido : real

inicio

   para contador de FAHRENHEIT_INICIAL ate FAHRENHEIT_FINAL passo INCREMENTO faca

      convertido <- (5 / 9) * (contador - 32)

      escreval(numpcarac(contador) + "F = " + numpcarac(convertido) + "C")

   fimpara

fimalgoritmo