{* 
 * Ler dois números inteiro
 * obter o quociente inteiro da divisão sem usar operação 'DIV' e '/'
 *}

algoritmo "divisao_sem_sinal"

var
   dividendo : inteiro
   divisor : inteiro
   quociente : inteiro

inicio

   quociente <- 1

   escreval("Informe o dividendo")
   leia(dividendo)
   escreval("Informe o divisor")
   leia(divisor)

   enquanto ((quociente * divisor) < dividendo) faca

      quociente <- quociente + quociente

   fimenquanto

   escreval("Quociente = " + numpcarac(quociente))

fimalgoritmo