{*
 * Elabore um algoritmo que imprima todos os n�meros primos existentes entre N1
 * e N2, em que N1 e N2 s�o n�meros naturais fornecidos pelo usu�rio
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

   escreval("Informe o primeiro n�mero:")
   leia(primeiroNumero)
   escreval("Informe o segundo n�mero:")
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
         escreval("N�mero primo " + numpcarac(contador))
      fimse
   fimpara

 fimalgoritmo