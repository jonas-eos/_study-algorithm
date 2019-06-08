{*
 * Em um prédio há três elevadores denominados A, B e C.
 * Para otimizar o sistema de controle dos elevadores foi realizado um
 * levantamento no qual cada usuário respondia:
 * - o elevador que utilizava com mais frequencia;
 * - o período em que utilizava o elevador, entre:
 * - 'M' = Matutino
 * - 'V' = Vespertino
 * - 'N' = Noturno
 * Construa um algoritmo que calcule e imprima:
 * - qual é o elevador mais frequentado e em que período se concentra o maior fluxo;
 * - Qual o período mais usado de todos e a que elevador pertence;
 * - qual a diferença porcentual entre o mais usado dos horários e o menos usado
 * - qual a porcentagem sobre o total de serviços prestados do elevador de
 * média utilização
*}

algoritmo "pesquisa"
const
   MATUTINO = "M"
   VESPERTINO = "V"
   NOTURNO = "N"
   INICIALIZADOR = 0
   ELEVADOR_A = "A"
   ELEVADOR_B = "B"
   ELEVADOR_C = "C"

var
   elevadorUsadoMaisFrequenciaIndividual : caracter
   periodoQueUsaElevador : caracter
   elevadorMaisFrequentado : caracter
   elevadorMediaUtilizacao : caracter
   elevadorUsadoPeloPeriodoMaisMovimentado : caracter
   totalDadosInserido : inteiro

   totalFrequenciaElevadorA : inteiro
   totalFrequenciaElevadorB : inteiro
   totalFrequenciaElevadorC : inteiro
   totalFluxoMatutinoElevadorA : inteiro
   totalFluxoMatutinoElevadorB : inteiro
   totalFluxoMatutinoElevadorC : inteiro
   totalFluxoVespertinoElevadorA : inteiro
   totalFluxoVespertinoElevadorB : inteiro
   totalFluxoVespertinoElevadorC : inteiro
   totalFluxoNoturnoElevadorA : inteiro
   totalFluxoNoturnoElevadorB : inteiro
   totalFluxoNoturnoElevadorC : inteiro
   totalFluxoMatutino : inteiro
   porcentagemFluxoMatutino : real
   totalFluxoVespertino : inteiro
   porcentagemFluxoVespertino : real
   totalFluxoNoturno : inteiro
   porcentagemFluxoNoturno : real
   porcentagemFluxoMaisFrequente : real
   porcentagemFluxoMenosFrequente : real
   porcentagemDiferencialMenorFluxoEmaiorFluxo : real
   porcentagemFluxoMediaUtilizacao : real
   porcentagemFrequenciaElevadorA : real
   porcentagemFrequenciaElevadorB : real
   porcentagemFrequenciaElevadorC : real
   fluxoComMaiorFrequencia : caracter
   fluxoComMenorFrequencia : caracter
   fluxoComMaiorFrequenciaDoElevadorMaisFrequentado : caracter

inicio
   totalFrequenciaElevadorA <- INICIALIZADOR
   totalFrequenciaElevadorB <- INICIALIZADOR
   totalFrequenciaElevadorC <- INICIALIZADOR
   totalFluxoMatutinoElevadorA <- INICIALIZADOR
   totalFluxoMatutinoElevadorB <- INICIALIZADOR
   totalFluxoMatutinoElevadorC <- INICIALIZADOR
   totalFluxoVespertinoElevadorA <- INICIALIZADOR
   totalFluxoVespertinoElevadorB <- INICIALIZADOR
   totalFluxoVespertinoElevadorC <- INICIALIZADOR
   totalFluxoNoturnoElevadorA <- INICIALIZADOR
   totalFluxoNoturnoElevadorB <- INICIALIZADOR
   totalFluxoNoturnoElevadorC <- INICIALIZADOR
   totalFluxoMatutino <- INICIALIZADOR
   totalFluxoVespertino <- INICIALIZADOR
   totalFluxoNoturno <- INICIALIZADOR
   totalDadosInserido <- INICIALIZADOR

   repita
      limpatela
      escreval("Qual elevador usado com mais frequencia?")
      leia(elevadorUsadoMaisFrequenciaIndividual)

      se(elevadorUsadoMaisFrequenciaIndividual <> ELEVADOR_A) entao
         se(elevadorUsadoMaisFrequenciaIndividual <> ELEVADOR_B) entao
            se(elevadorUsadoMaisFrequenciaIndividual <> ELEVADOR_C) entao
               interrompa
            fimse
         fimse
      fimse
      
      escreval("**************************")
      escreval("*CÓDIGO   -  Significado *")
      escreval("*     M   -  Matutino    *")
      escreval("*     V   -  Vespertino  *")
      escreval("*     N   -  Noturno     *")
      escreval("**************************")
      escreval("De acordo com a tabela, qual código mais usado?")
      leia(periodoQueUsaElevador)

      escolha(elevadorUsadoMaisFrequenciaIndividual)
         caso ELEVADOR_A
            totalFrequenciaElevadorA <- totalFrequenciaElevadorA + 1
            escolha(periodoQueUsaElevador)
               caso Matutino
                  totalFluxoMatutinoElevadorA <- totalFluxoMatutinoElevadorA + 1
               caso Vespertino
                  totalFluxoVespertinoElevadorA <- totalFluxoVespertinoElevadorA + 1
               caso Noturno
                  totalFluxoNoturnoElevadorA <- totalFluxoNoturnoElevadorA + 1
            fimescolha
         caso ELEVADOR_B
            totalFrequenciaElevadorB <- totalFrequenciaElevadorB + 1
            escolha(periodoQueUsaElevador)
               caso Matutino
                  totalFluxoMatutinoElevadorB <- totalFluxoMatutinoElevadorB + 1
               caso Vespertino
                  totalFluxoVespertinoElevadorB <- totalFluxoVespertinoElevadorB + 1
               caso Noturno
                  totalFluxoNoturnoElevadorB <- totalFluxoNoturnoElevadorB + 1
            fimescolha
         caso ELEVADOR_C
            totalFrequenciaElevadorC <- totalFrequenciaElevadorC + 1
            escolha(periodoQueUsaElevador)
               caso Matutino
                  totalFluxoMatutinoElevadorC <- totalFluxoMatutinoElevadorC + 1
               caso Vespertino
                  totalFluxoVespertinoElevadorC <- totalFluxoVespertinoElevadorC + 1
               caso Noturno
                  totalFluxoNoturnoElevadorC <- totalFluxoNoturnoElevadorC + 1
            fimescolha
      fimescolha
      escolha(periodoQueUsaElevador)
         caso MATUTINO
            totalFluxoMatutino <- totalFluxoMatutino + 1
         caso Vespertino
            totalFluxoVespertino <- totalFluxoVespertino + 1
         caso Noturno
            totalFluxoNoturno <- totalFluxoNoturno + 1
      fimescolha
      totalDadosInserido <- totalDadosInserido + 1
   ate(falso)

   porcentagemFrequenciaElevadorA <- (totalFrequenciaElevadorA / totalDadosInserido) * 100
   porcentagemFrequenciaElevadorB <- (totalFrequenciaElevadorB / totalDadosInserido) * 100
   porcentagemFrequenciaElevadorC <- (totalFrequenciaElevadorC / totalDadosInserido) * 100
   porcentagemFluxoMatutino <- (totalFluxoMatutino / totalDadosInserido) * 100
   porcentagemFluxoVespertino <- (totalFluxoVespertino / totalDadosInserido) * 100
   porcentagemFluxoNoturno <- (totalFluxoNoturno / totalDadosInserido) * 100
   {* Identifica elevador mais usado *}
   se(totalFrequenciaElevadorA > totalFrequenciaElevadorB) entao
      se(totalFrequenciaElevadorA > totalFrequenciaElevadorC) entao
         elevadorMaisFrequentado <- ELEVADOR_A
         se(totalFrequenciaElevadorB > totalFrequenciaElevadorC) entao
            elevadorMediaUtilizacao <- ELEVADOR_B
            porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorB
         senao
            elevadorMediaUtilizacao <- ELEVADOR_C
            porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorC
         fimse
      senao
         elevadorMediaUtilizacao <- ELEVADOR_A
         porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorA
         elevadorMaisFrequentado <- ELEVADOR_C
      fimse
   senao
      se(totalFrequenciaElevadorB > totalFrequenciaElevadorC) entao
         elevadorMaisFrequentado <- ELEVADOR_B
         se(totalFrequenciaElevadorA > totalFrequenciaElevadorC) entao
            elevadorMediaUtilizacao <- ELEVADOR_A
            porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorA
         senao
            elevadorMediaUtilizacao <- ELEVADOR_C
            porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorC
         fimse
      senao
         elevadorMediaUtilizacao <- ELEVADOR_B
         porcentagemFluxoMediaUtilizacao <- porcentagemFrequenciaElevadorB
         elevadorMaisFrequentado <- ELEVADOR_C
      fimse
   fimse

   {* Identifica em qual periodo mais usado do elevador mais frequentad *}
   escolha(elevadorMaisFrequentado)
      caso ELEVADOR_A
         se(totalFluxoMatutinoElevadorA > totalFluxoVespertinoElevadorA) entao
            se(totalFluxoMatutinoElevadorA > totalFluxoNoturnoElevadorA) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- MATUTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         senao
            se(totalFluxoVespertinoElevadorA > totalFluxoNoturnoElevadorA) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- VESPERTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         fimse
      caso ELEVADOR_B
         se(totalFluxoMatutinoElevadorB > totalFluxoVespertinoElevadorB) entao
            se(totalFluxoMatutinoElevadorB > totalFluxoNoturnoElevadorB) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- MATUTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         senao
            se(totalFluxoVespertinoElevadorB > totalFluxoNoturnoElevadorB) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- VESPERTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         fimse
      caso ELEVADOR_C
         se(totalFluxoMatutinoElevadorC > totalFluxoVespertinoElevadorC) entao
            se(totalFluxoMatutinoElevadorC > totalFluxoNoturnoElevadorC) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- MATUTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         senao
            se(totalFluxoVespertinoElevadorC > totalFluxoNoturnoElevadorC) entao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- VESPERTINO
            senao
               fluxoComMaiorFrequenciaDoElevadorMaisFrequentado <- NOTURNO
            fimse
         fimse
   fimescolha

   {* identifica fluxo com maior frequencia *}
   se(totalFluxoMatutino > totalFluxoVespertino) entao
      se(totalFluxoMatutino > totalFluxoNoturno) entao
         fluxoComMaiorFrequencia <- MATUTINO
         porcentagemFluxoMaisFrequente <- porcentagemFluxoMatutino
      senao
         fluxoComMaiorFrequencia <- NOTURNO
         porcentagemFluxoMaisFrequente <- porcentagemFluxoNoturno
      fimse
   senao
      se(totalFluxoVespertino > totalFluxoNoturno) entao
         fluxoComMaiorFrequencia <- Vespertino
         porcentagemFluxoMaisFrequente <- porcentagemFluxoVespertino
      senao
         fluxoComMaiorFrequencia <- NOTURNO
         porcentagemFluxoMaisFrequente <- porcentagemFluxoNoturno
      fimse
   fimse

   {* Identifica fluxo com menor frequencia *}
   se(totalFluxoMatutino < totalFluxoVespertino) entao
      se(totalFluxoMatutino < totalFluxoNoturno) entao
         fluxoComMenorFrequencia <- MATUTINO
         porcentagemFluxoMenosFrequente <- porcentagemFluxoMatutino
      senao
         fluxoComMenorFrequencia <- NOTURNO
         porcentagemFluxoMenosFrequente <- porcentagemFluxoNoturno
      fimse
   senao
      se(totalFluxoVespertino < totalFluxoNoturno) entao
         fluxoComMenorFrequencia <- Vespertino
         porcentagemFluxoMenosFrequente <- porcentagemFluxoVespertino
      senao
         fluxoComMenorFrequencia <- NOTURNO
         porcentagemFluxoMenosFrequente <- porcentagemFluxoNoturno
      fimse
   fimse

   {* Identifica o elevador mais usado no peirodo X *}
   escolha(fluxoComMaiorFrequencia)
      caso MATUTINO
         se(totalFluxoMatutinoElevadorA > totalFluxoMatutinoElevadorB) entao
            se(totalFluxoMatutinoElevadorA > totalFluxoMatutinoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_A
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_C
            fimse
         senao
            se(totalFluxoMatutinoElevadorB > totalFluxoMatutinoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_B
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_C
            fimse
         fimse
      caso VESPERTINO
         se(totalFluxoVespertinoElevadorA > totalFluxoVespertinoElevadorB) entao
            se(totalFluxoVespertinoElevadorA > totalFluxoVespertinoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_A
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_C
            fimse
         senao
            se(totalFluxoVespertinoElevadorB > totalFluxoVespertinoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_B
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- elevador
            fimse
         fimse
      caso NOTURNO
         se(totalFluxoNoturnoElevadorA > totalFluxoNoturnoElevadorB) entao
            se(totalFluxoNoturnoElevadorA > totalFluxoNoturnoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_A
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_C
            fimse
         senao
            se(totalFluxoNoturnoElevadorB > totalFluxoNoturnoElevadorC) entao
               elevadorUsadoPeloPeriodoMaisMovimentado <- ELEVADOR_B
            senao
               elevadorUsadoPeloPeriodoMaisMovimentado <- elevador
            fimse
         fimse
   fimescolha

   porcentagemDiferencialMenorFluxoEmaiorFluxo <- porcentagemFluxoMaisFrequente - porcentagemFluxoMenosFrequente
   se(porcentagemDiferencialMenorFluxoEmaiorFluxo < 0) entao
      porcentagemDiferencialMenorFluxoEmaiorFluxo <- porcentagemDiferencialMenorFluxoEmaiorFluxo * -1
   fimse

   limpatela
   escreva("Elevador ", elevadorMaisFrequentado, " com mais frequencia e mais ")
   escreval("movimentado no período ", fluxoComMaiorFrequenciaDoElevadorMaisFrequentado)
   escreval("O período mais usado é: ", fluxoComMaiorFrequencia, " que é no ")
   escreval("elevador", elevadorUsadoPeloPeriodoMaisMovimentado)
   escreva("Diferença porcentual do mais usado para o menos usado: ")
   escreval(porcentagemDiferencialMenorFluxoEmaiorFluxo, "%")
   escreva("Elevador com média utilização ", elevadorMediaUtilizacao)
   escreval(" possui ", porcentagemFluxoMediaUtilizacao, "% de uso")

fimalgoritmo