{*
 * Obtem o máximo divisor comum (MDC) entre dois números
*}

algoritmo "mdc"
const
   MENOR_NUMERO = 1
   SEM_RESTO = 0

var
   primeiroNumero : real
   segundoNumero : real
   divisor : inteiro
   contador : inteiro
   mdc : inteiro

inicio

   divisor <- 2
   mdc <- 1

   escreval("Informe o primeiro número")
   leia(primeiroNumero)
   escreval("Informe o segundo número")
   leia(segundoNumero)

   enquanto (primeiroNumero > MENOR_NUMERO) e (segundoNumero > MENOR_NUMERO) faca

      se(primeiroNumero mod divisor = SEM_RESTO) e (segundoNumero mod divisor = SEM_RESTO) entao

         primeiroNumero <- primeiroNumero / divisor
         segundoNumero <- segundoNumero / divisor
         mdc <- mdc * divisor

      senao

         se(primeiroNumero mod divisor = SEM_RESTO) entao

            primeiroNumero <- primeiroNumero / divisor

         senao

            se(segundoNumero mod divisor = SEM_RESTO) entao

               segundoNumero <- segundoNumero / divisor

            senao

               divisor <- divisor + 1

            fimse

         fimse

      fimse

   fimenquanto
   
   escreval(numpcarac(mdc))

fimalgoritmo