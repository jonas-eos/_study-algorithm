{* 
 * Uma rainha requisitou os serviços de um monge e disse-lhe que pagaria 
 * qualquer preço.
 * O monge, necessitando de alimentos, perguntou à rainha se o pagamento poderia
 * ser feito com grãos de trigo dispostos em um tabuleiro de xadrez, de tal 
 * forma que o primeiro quadro contivesse apenas um grão e os quadros 
 * subsequentes, o dobro do quadro anterior.
 * A rainha considerou o pagamento barato e pediu que o serviço fosse executado,
 * sem se dar conta de que seria impossível efetuar o pagamento.
 * Faça um algoritmo para calcular o número de grãos que o monge esperava
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

   escreval("A rainha tinha que pagar " + numpcarac(grao) + " grãos")

fimalgoritmo