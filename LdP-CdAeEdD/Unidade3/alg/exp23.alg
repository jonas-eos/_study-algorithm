{*
 * Elabore um algoritmo que imprima todos os números primos existentes entre N1
 * e N2, em que N1 e N2 são números naturais fornecidos pelo usuário
 *}

 algoritmo "primos_entre_n1_n2"
 const
   INCREMENTO = 1
   PRIMEIRO_NUMERO = 1

 var
   primeiroNumero : inteiro
   segundoNumero : inteiro
   contador : inteiro
   divisor : inteiro
   gatilhoNaoPrimo : inteiro

 inicio

   escreval("Informe o primeiro número:")
   leia(primeiroNumero)
   escreval("Informe o segundo número:")
   leia(segundoNumero)
   para contador de primeiroNumero ate segundoNumero passo INCREMENTO faca
      gatilhoNaoPrimo <- 0
      para divisor de PRIMEIRO_NUMERO ate segundoNumero passo INCREMENTO faca
         se(contador mod divisor = 0) entao
            gatilhoNaoPrimo <- gatilhoNaoPrimo + 1
         fimse
         se(gatilhoNaoPrimo = 3) entao
            interrompa
         fimse
      fimpara
      se(gatilhoNaoPrimo < 3) entao
         escreval("Número primo " + numpcarac(contador))
      fimse
   fimpara

 fimalgoritmo