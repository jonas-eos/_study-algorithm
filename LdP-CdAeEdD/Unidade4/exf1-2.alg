// Elabore um algoritmo que, dados dois vetores inteiros de 20 posições, efetue
// as respectivas operações indicadas por outro vetor de 20 posições de
// caracteres também fornecido pelo usuário, contendo as quatro operações
// aritméticas em qualquer combinação e armazenando os resultados em um terceiro
// vetor.

algoritmo "calculadora"

const
    INDICE_INICIO = 1
    INDICE_FINAL = 20
    INCREMENTAL = 1
    SUBTRACAO = "-"
    MULTIPLICACAO = "*"
    DIVISAO = "/"
    SOMA = "+"

var
 numerosA : vetor[INDICE_INICIO..INDICE_FINAL] de inteiro
 numerosB : vetor[INDICE_INICIO..INDICE_FINAL] de inteiro
 operacao : vetor[INDICE_INICIO..INDICE_FINAL] de caracter
 resultado : vetor[INDICE_INICIO..INDICE_FINAL] de real
 contador : inteiro

inicio

   para contador de INDICE_INICIO ate INDICE_FINAL passo INCREMENTAL faca
      limpatela()
      escreval("Informe o valor do operador ", contador)
      leia(numerosA[contador])
      escreval("Informe o valor do operando ", contador)
      leia(numerosB[contador])
      escreval("Informe o simbolo da operação ", contador)
      leia(operacao[contador])
   fimpara

   para contador de INDICE_INICIO ate INDICE_FINAL passo INCREMENTAL faca
      escolha(operacao[contador])
         caso SUBTRACAO
            resultado[contador] <- numerosA[contador] - numerosB[contador]
         caso MULTIPLICACAO
            resultado[contador] <- numerosA[contador] * numerosB[contador]
         caso DIVISAO
            resultado[contador] <- numerosA[contador] / numerosB[contador]
         caso SOMA
            resultado[contador] <- numerosA[contador] + numerosB[contador]
      fimescolha
   fimpara

   para contador de INDICE_INICIO ate INDICE_FINAL passo INCREMENTAL faca
      escreval(numerosA[contador], operacao[contador], numerosB[contador], " = ", resultado[contador])
   fimpara

fimalgoritmo