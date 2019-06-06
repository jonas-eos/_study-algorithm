{*
 * Construa um algoritmo que leia um conjunto de dados contendo altura e sexo
 * ('M' para masculino e 'F' para feminino) de 50 pessoas e, depois, calcule  e  escreva: 
 * - a maior e a menor altura do grupo;
 * - a média de altura das mulheres;
 * - o número de homens e a diferença porcentual entre eles e as mulheres.
 *}

algoritmo "pesquisa"
const
   PRIMEIRO_REGISTRO = 1
   INCREMENTAL = 1
   PORCENTO = 100
   QNTD_PESSOAS = 5          // QTND = Quantidade
   MASCULINO = "M"
   FEMININO = "F"

var
   altura : real
   sexo : caracter
   maiorAltura, menorAltura : real
   somaTotalAlturaMulheres : real
   mediaAlturaMulheres : real
   quantidadeHomens, quantidadeMulheres : inteiro
   percentualHomens, percentualMulheres, diferencaPercentualHomensMulheres : real
   contador : inteiro
   registrosErrados : inteiro
   ehPrimeiroRegistro : logico
   ehRegistroInvalido : logico
   

inicio
   somaTotalAlturaMulheres <- 0
   quantidadeHomens <- 0
   quantidadeMulheres <- 0
   registrosErrados <- 0
   ehPrimeiroRegistro <- verdadeiro
   ehRegistroInvalido <- falso

   para contador de PRIMEIRO_REGISTRO ate QNTD_PESSOAS passo INCREMENTAL faca
      escreval(" ******** - CADASTRO DA PESSOAL NÚMERO " , contador, " - ********")
      escreval("Informe o sexo sendo M masculino e F feminino")
      escreval("Caso informado outro valor, não será considerado no cadastro")
      leia(sexo)

      escreval("Informe a altura")
      leia(altura)

      escolha(sexo)
         caso MASCULINO
            quantidadeHomens <- quantidadeHomens + INCREMENTAL
            ehRegistroInvalido <- falso
         caso FEMININO
            somaTotalAlturaMulheres <- somaTotalAlturaMulheres + altura
            quantidadeMulheres <- quantidadeMulheres + INCREMENTAL
            ehRegistroInvalido <- falso
         outrocaso
            escreval("Inválido, descartado na contagem")
            registrosErrados <- registrosErrados + INCREMENTAL
            ehRegistroInvalido <- verdadeiro
      fimescolha

      se (nao ehRegistroInvalido) entao
         se (ehPrimeiroRegistro) entao
            maiorAltura <- altura
            menorAltura <- altura
            ehPrimeiroRegistro <- falso
         senao
            se (altura > maiorAltura) entao
               maiorAltura <- altura
            fimse
            se (altura < menorAltura) entao
               menorAltura <- altura
            fimse
         fimse
      fimse
   fimpara

   mediaAlturaMulheres <- somaTotalAlturaMulheres / quantidadeMulheres

   percentualMulheres <- (PORCENTO * quantidadeMulheres) / (QNTD_PESSOAS - registrosErrados)
   percentualHomens <- (PORCENTO * quantidadeHomens) / (QNTD_PESSOAS - registrosErrados)
   diferencaPercentualHomensMulheres <- percentualHomens - percentualMulheres

   escreval("Maior altura: ", maiorAltura)
   escreval("Menor altura: ", menorAltura)
   escreval("Média de altura das mulheres: ", mediaAlturaMulheres)
   escreval("Quantidade de homens: ", quantidadeHomens)
   escreva("Diferença dos homens para mulheres: ")
   escreva(diferencaPercentualHomensMulheres, "%")

fimalgoritmo