// Desenvolva um algoritmo que leia um vetor de 20 posi��es inteiras e o coloque
// em ordem
// crescente, utilizando a seguinte estrat�gia de ordena��o:
// - selecione o elemento do vetor de 20 posi��es que apresenta o menor valor;
// - troque este elemento pelo primeiro;
// - repita estas opera��es, envolvendo agora apenas os 19 elementos restantes
// (selecionando o de menor valor com a segunda posi��o, deois os 18 elementos
// trocando o de menor valor com a terceira posi��o), depois os 17, os 16 e
// assim por diante, at� restar um �nico elemento, o maior deles.

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
      escreval("Informe um n�mero inteiro")
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
      numeros[indiceMenorValor] <- numeros[indice]
      numeros[indice] <- menorValor
   fimpara        {* percorrendo indice principal *}

   para indice de INDICE_INICIAL ate INDICE_FINAL passo INCREMENTAL faca
      escreval(numeros[indice])
   fimpara

fimalgoritmo