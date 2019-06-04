{*
 * Ler um conjunto de valores inteiros e positivos
 * determinar qual o maior e o menor valor do conjunto
 * caso seja fornecido número negativo, finalzia a leitura dos conjuntos
 * e mostra o resultado
*}

algoritmo "menor_maior"

var
   numero : inteiro
   maiorNumero : inteiro
   menorNumero : inteiro

inicio

   escreval("Informe um número")
      leia(numero)
   
   maiorNumero <- numero
   menorNumero <- numero

   repita

      escreval("Informe um número")
      leia(numero)

      se (numero < 0) entao

         interrompa
      
      senao

         se (numero > maiorNumero) entao

            maiorNumero <- numero

         fimse

         se (numero < menorNumero) entao

            menorNumero <- numero

         fimse

      fimse

   ate (falso)

   escreval("Maior número: " + numpcarac(maiorNumero))
   escreval("Menor número: " + numpcarac(menorNumero))

fimalgoritmo