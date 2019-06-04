{*
 * Ler base e expoente inteiros
 * fornecer o resultado sem usar operação de exponenciação
*}

algoritmo "exponenciacao_sem_funcao"
const
   PRIMEIRO_EXPOENTE = 1

var
   expoente : inteiro
   base : inteiro
   resultado : inteiro

inicio

   escreval("Informe a base")
   leia(base)
   escreval("Informe o expoente")
   leia(expoente)

   resultado <- base

   enquanto expoente > PRIMEIRO_EXPOENTE faca

      resultado <- resultado * base
      
      expoente <- expoente - 1

   fimenquanto

   escreval("Resultado: " + numpcarac(resultado))

fimalgoritmo