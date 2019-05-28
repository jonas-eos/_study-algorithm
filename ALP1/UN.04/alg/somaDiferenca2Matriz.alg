{*
 * Descrição            L? matrizes inteiras  5x5 e imprime a soma e a diferença
 *                      entre elas.
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "somaDiferenca2Matriz"

const
    POSICAO_INICIAL = 1
    POSICAO_FINAL = 5

var
    matrizA : vetor[POSICAO_INICIAL..POSICAO_FINAL, POSICAO_INICIAL..POSICAO_FINAL] de inteiro
    matrizB : vetor[POSICAO_INICIAL..POSICAO_FINAL, POSICAO_INICIAL..POSICAO_FINAL] de inteiro
    somaAeB : vetor[POSICAO_INICIAL..POSICAO_FINAL, POSICAO_INICIAL..POSICAO_FINAL] de inteiro
    diferencaAeB : vetor[POSICAO_INICIAL..POSICAO_FINAL, POSICAO_INICIAL..POSICAO_FINAL] de inteiro

    contadorLinha, contadorColuna : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    para contadorLinha de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        para contadorColuna de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

            escreva("Informe um número para a matriz A posição: ")
            escreva(numpcarac(contadorLinha) + numpcarac(contadorColuna))
            leia(matrizA[contadorLinha, contadorColuna])

            escreva("Informe um número para a matriz B posição: ")
            escreva(numpcarac(contadorLinha) + numpcarac(contadorColuna))
            leia(matrizB[contadorLinha, contadorColuna])

        fimpara
    fimpara

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    para contadorLinha de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        para contadorColuna de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

            somaAeB[contadorLinha, contadorColuna] <- ( matrizA[contadorLinha, contadorColuna] + matrizB[contadorLinha, contadorColuna] )
            diferencaAeB[contadorLinha, contadorColuna] <-  ( matrizA[contadorLinha, contadorColuna] - matrizB[contadorLinha, contadorColuna] )
        
        fimpara
    fimpara

    {*------------------------------------------------------------------------*}

    {* Saida *}
    limpatela
    
    escreval("---------------------------------")
    escreval("Soma")
    escreval("---------------------------------")
    
    para contadorLinha de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        para contadorColuna de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca


            escreva( numpcarac( somaAeB[contadorLinha, contadorColuna] ) + " ")

        fimpara
            escreval()
    fimpara

    escreval("---------------------------------")
    escreval("Diferença")
    escreval("---------------------------------")

    para contadorLinha de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        para contadorColuna de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

            escreva( numpcarac( diferencaAeB[contadorLinha, contadorColuna] ) + " " )

        fimpara
            escreval()
    fimpara

fimalgoritmo