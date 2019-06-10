// Desenvolva um algoritmo que leia um vetor de 20 posições inteiras e o coloque
// em ordem
// crescente, utilizando a seguinte estratégia de ordenação:
// - selecione o elemento do vetor de 20 posições que apresenta o menor valor;
// - troque este elemento pelo primeiro;
// - repita estas operações, envolvendo agora apenas os 19 elementos restantes
// (selecionando o de menor valor com a segunda posição, deois os 18 elementos
// trocando o de menor valor com a terceira posição), depois os 17, os 16 e
// assim por diante, até restar um único elemento, o maior deles.

algoritmo "Ordenar vetor"

const
   INDICE_INICIAL = 1
   INDICE_FINAL = 20
   INCREMENTAL = 1

var
   numeros : vetor[INDICE_INICIAL..INDICE_FINAL] de inteiro
   menorValor, auxiliar : inteiro
   indice, indicePosterior, indiceMenorValor : inteiro

inicio

   para indice de INDICE_INICIAL ate INDICE_FINAL passo INCREMENTAL faca
      escreval("Informe um número inteiro")
      leia(numeros[indice])
   fimpara

   para indice de INDICE_INICIAL ate INDICE_FINAL - 1 passo INCREMENTAL faca
      menorValor <- numeros[indice]
      indiceMenorValor <- indice
      para indicePosterior de indice + 1 ate INDICE_FINAL passo INCREMENTAL faca
         se menorValor > numeros[indicePosterior] entao
            menorValor <- numeros[indicePosterior]
            indiceMenorValor <- indicePosterior
         fimse
      fimpara        {* percorrendo indice posterior *}
      auxiliar <- numeros[indice]
      numeros[indice] <- menorValor
      numeros[indiceMenorValor] <- auxiliar
   fimpara        {* percorrendo indice principal *}

   para indice de INDICE_INICIAL ate INDICE_FINAL passo INCREMENTAL faca
      escreval(numeros[indice])
   fimpara

fimalgoritmo