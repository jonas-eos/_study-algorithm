{*
 * Anacleto tem 1.50 metros e cresce 2 centímetros por ano, enquanto Felisberto
 * tem 1.10 metros e cresce 3 centímetros por ano.
 * Construa um algoritmo que calcule e imprima quantos anos serão necessários
 * para que Felisberto seja maior que Anacleto.
*}

algoritmo "idade_alcancar_altura"
const
   CONVERSAO_METROS_CENTIMENTROS = 100
   ALTURA_ANACLETO = 1.5 * CONVERSAO_METROS_CENTIMENTROS
   CRESCIMENTO_ANUAL_ANACLETO = 2
   ALTURA_FELISBERTO = 1.1 * CONVERSAO_METROS_CENTIMENTROS
   CRESCIMENTO_ANUAL_FELISBERTO = 3

var
   anos : inteiro
   alturaCrescimentoFelisberto : real
   alturaCrescimentoAnacleto : real

inicio
   anos <- 0
   alturaCrescimentoFelisberto <- ALTURA_FELISBERTO
   alturaCrescimentoAnacleto <- ALTURA_ANACLETO
   enquanto (alturaCrescimentoFelisberto < alturaCrescimentoAnacleto) faca
      alturaCrescimentoFelisberto <- alturaCrescimentoFelisberto + CRESCIMENTO_ANUAL_FELISBERTO
      alturaCrescimentoAnacleto <- alturaCrescimentoAnacleto + CRESCIMENTO_ANUAL_ANACLETO
      anos <- anos + 1
   fimenquanto

   escreval("Felisberto levará ", anos, " anos para alcançar Anacleto")
fimalgoritmo