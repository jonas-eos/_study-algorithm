{* 
 * Uma rainha requisitou os servi�os de um monge e disse-lhe que pagaria 
 * qualquer pre�o.
 * O monge, necessitando de alimentos, perguntou � rainha se o pagamento poderia
 * ser feito com gr�os de trigo dispostos em um tabuleiro de xadrez, de tal 
 * forma que o primeiro quadro contivesse apenas um gr�o e os quadros 
 * subsequentes, o dobro do quadro anterior.
 * A rainha considerou o pagamento barato e pediu que o servi�o fosse executado,
 * sem se dar conta de que seria imposs�vel efetuar o pagamento.
 * Fa�a um algoritmo para calcular o n�mero de gr�os que o monge esperava
 * receber.
*}

algoritmo "graos_multiplicados"
const
   CASA_INICIAL = 1
   CASAS_XADREX_LINHAS = 8
   CASAS_XADRES_COLUNAS = 8
   TOTAL_CASAS_XADRES = CASAS_XADRES_COLUNAS * CASAS_XADREX_LINHAS
   GRAO_INICIAL = 1
   MULTIPLICADOR = 2
   INCREMENTAL = 1

var
   grao : real
   contador : inteiro

inicio

   grao <- GRAO_INICIAL

   para contador de CASA_INICIAL ate TOTAL_CASAS_XADRES passo INCREMENTAL faca

      grao <- grao * MULTIPLICADOR

   fimpara

   escreval("A rainha tinha que pagar " + numpcarac(grao) + " gr�os")

fimalgoritmo