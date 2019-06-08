{*
 * Um cinema possui capacidade de 100 lugares e está sempre com ocupação total.
 * Certo dia, cada espectador respondeu a um questionário, no qual constava:
 * - Sua idade;
 * - sua opinião em relação ao filme, segundo as seguintes notas:
 * NOTA     -     SIGNIFICADO
 *    A     -     Ótimo
 *    B     -     Bom
 *    C     -     Regular
 *    D     -     Ruim
 *    E     -     Péssimo
 * Elabore um algoritmo que, lendo esses 0dados, calcule e imprima:
 * - a quantidade de respostas ótimo
 * - a diferença porcentual entre respostas bom e regular
 * - a média de idade das pessoas que responderam Ruim
 * - a porcentagem de respostas Péssimo e a maior idade que utilizou essa opção
 * - a diferença de idade entre a maior idade que respondeu ótimo e a maior
 * idade que respondeu Ruim
*}

algoritmo "pesquisa"
const
   LOTACAO_MAXIMA = 100
   PRIMEIRO = 1
   INICIALIZADOR = 0
   OTIMO = "A"
   BOM = "B"
   REGULAR = "C"
   RUIM = "D"
   PESSIMO = "E"

var
   idade : inteiro
   nota : caracter
   cliente : inteiro

   quantidadeNotaOtimo : inteiro
   quantidadeNotaBom : inteiro
   quantidadeNotaRegular : inteiro
   quantidadeNotaRuim : inteiro
   quantidadeNotaPessimo : inteiro

   porcentagemNotaBom : real
   porcentagemNotaRegular : real
   porcentagemNotaPessimo : real
   diferencaPorcentualNotaBoaEregular : real

   somatorioIdadeEscolheuOpD : inteiro       {* Somatorio da idade das pessoas que escolheram a opcao D (ruim) *}
   mediaIdadeEscolheuOpD : real              {* Média de idade das pessoas que escolheram a opçao D(ruim) *}
   maiorIdadeOpE : inteiro                   {* Maior idade que escolheu a opção E(péssimo) *}
   maiorIdadeOpA : inteiro                   {* Maior idade que escolheu a opção A *}
   maiorIdadeOpD : inteiro                   {* Maior idade que escolheu a opção D *}
   diferencaIdadeOpAeOpD : inteiro           {* Diferença de idade entre a maior idade que escolheu A e D *}

inicio
   quantidadeNotaOtimo <- INICIALIZADOR
   quantidadeNotaBom <- INICIALIZADOR
   quantidadeNotaRegular <- INICIALIZADOR
   quantidadeNotaRuim <- INICIALIZADOR
   somatorioIdadeEscolheuOpD <- INICIALIZADOR
   quantidadeNotaPessimo <- INICIALIZADOR

   para cliente de PRIMEIRO ate LOTACAO_MAXIMA passo 1 faca
      escreval("Informe sua idade")
      leia(idade)
      escreval("*****************************")
      escreval("*NOTA     -     SIGNIFICADO *")
      escreval("*   A     -     Ótimo       *")
      escreval("*   B     -     Bom         *")
      escreval("*   C     -     Regular     *")
      escreval("*   D     -     Ruim        *")
      escreval("*   E     -     Péssim      *")
      escreval("*****************************")
      escreval("Qual sua nota?")
      leia(nota)

      escolha (nota)
         caso OTIMO
            quantidadeNotaOtimo <- quantidadeNotaOtimo + 1

            se idade > maiorIdadeOpA entao
               maiorIdadeOpA <- idade
            fimse

         caso BOM
            quantidadeNotaBom <- quantidadeNotaBom + 1
         caso REGULAR
            quantidadeNotaRegular <- quantidadeNotaRegular + 1
         caso RUIM
            somatorioIdadeEscolheuOpD <- somatorioIdadeEscolheuOpD + idade
            quantidadeNotaRuim <- quantidadeNotaRuim + 1

            se idade > maiorIdadeOpD entao
               maiorIdadeOpD <- idade
            fimse

         caso PESSIMO
            quantidadeNotaPessimo <- quantidadeNotaPessimo + 1
            se idade > maiorIdadeOpE entao
               maiorIdadeOpE <- idade
            fimse
      fimescolha
   fimpara

   porcentagemNotaBom <- (quantidadeNotaBom * 100) / LOTACAO_MAXIMA
   porcentagemNotaRegular <- (quantidadeNotaRegular * 100) / LOTACAO_MAXIMA
   porcentagemNotaPessimo <- (quantidadeNotaPessimo * 100) / LOTACAO_MAXIMA

   se porcentagemNotaBom > porcentagemNotaRegular entao
      diferencaPorcentualNotaBoaEregular <- porcentagemNotaBom - porcentagemNotaRegular
   senao
      diferencaPorcentualNotaBoaEregular <- porcentagemNotaRegular - porcentagemNotaBom
   fimse

   mediaIdadeEscolheuOpD <- somatorioIdadeEscolheuOpD / quantidadeNotaRuim

   se maiorIdadeOpA > maiorIdadeOpD entao
      diferencaIdadeOpAeOpD <- maiorIdadeOpA - maiorIdadeOpD
   senao
      diferencaIdadeOpAeOpD <- maiorIdadeOpD - maiorIdadeOpA
   fimse

   escreval("Quantidade de notas A(ótimo): ", quantidadeNotaOtimo)
   escreva("Diferença porcentual entra notas B e C: ")
   escreval(diferencaPorcentualNotaBoaEregular, "%")
   escreva("Média de idade das pessoas que escolheram opção D: ")
   escreval(mediaIdadeEscolheuOpD, "anos")
   escreval("Porcentagem de nota E: ", porcentagemNotaPessimo)
   escreval("Maior idade de quem escolheu nota E: ", maiorIdadeOpE)
   escreva("Diferença da maior idade de quem escolheu A ou D: ")
   escreval(diferencaIdadeOpAeOpD)

fimalgoritmo