// Altere o exemplo de soma de vetores para que este realize as seguinte 
// operação: o produto do primeiro vetor pelo inverso do segundo é armazenado a
// partir do centro para as bordas; de modo alternado, o vetor é de reais e
// possui 20 posições.
algoritmo "soma_dois_vetores"

const
   INDICE_INICIO = 1
   INDICE_FINAL = 20
   INCREMENTAL = 1
   DECREMENTO = -1
   METADE = 2
   PRIMEIRO_CONTROLE = 0

var
   vetorA : vetor[INDICE_INICIO..INDICE_FINAL] de inteiro
   vetorB : vetor[INDICE_INICIO..INDICE_FINAL] de inteiro
   resultado : vetor[INDICE_INICIO..INDICE_FINAL] de inteiro
   indice, indiceInverso : inteiro
   controleIndiceAleatorio : inteiro
   indiceAleatorio : inteiro
   ehSubtracao : logico

inicio
   ehSubtracao <- verdadeiro
   para indice de INDICE_INICIO ate  INDICE_FINAL passo INCREMENTAL faca
      leia(vetorA[indice], vetorB[indice])
   fimpara

   indice <- INDICE_INICIO
   indiceInverso <- INDICE_FINAL
   indiceAleatorio <- int(INDICE_FINAL / METADE)
   controleIndiceAleatorio <- PRIMEIRO_CONTROLE
   
   enquanto (indice <= INDICE_FINAL) e (indiceInverso >= INDICE_INICIO ) faca
      se(ehSubtracao) entao
         indiceAleatorio <- indiceAleatorio - controleIndiceAleatorio
         ehSubtracao <- falso
      senao
         indiceAleatorio <- indiceAleatorio + controleIndiceAleatorio
         ehSubtracao <- verdadeiro
      fimse
      resultado[indiceAleatorio] <- vetorA[indice] * vetorB[indiceInverso]
      indice <- indice + INCREMENTAL
      indiceInverso <- indiceInverso + DECREMENTO
      controleIndiceAleatorio <- controleIndiceAleatorio + INCREMENTAL
   fimenquanto
   
   indiceInverso <- INDICE_FINAL
   
   para indice de INDICE_INICIO ate INDICE_FINAL passo INCREMENTAL faca
      escreval("Posicao:", indice, " - ", vetorA[indice], " * ", vetorB[indiceInverso], " = ", resultado[indice])
   fimpara
   
fimalgoritmo
