{*
 * Descrição            L? uma matriz 5 x 5 de números inteiros e imprime os 
 *                      elementos da diagonal principal.
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "diagonalDe5x5"

const
    POSICAO_INICIAL = 1
    POSICAO_FINAL = 5

var
    numeros : vetor[POSICAO_INICIAL..POSICAO_FINAL, POSICAO_INICIAL..POSICAO_FINAL] de inteiro

    contadorColuna, contadorLinha : inteiro
    contadorDiagonal : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    para contadorLinha de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        para contadorColuna de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

            escreva("Informe um valor para posicao ")
            escreva(numpcarac(contadorLinha))
            escreva(numpcarac(contadorColuna) + " ")
            leia(numeros[contadorLinha, contadorColuna])

        fimpara
    fimpara


    {*------------------------------------------------------------------------*}

    {* Saida *}
    limpatela
    escreval("Números na diagonal: ")
    
    para contadorDiagonal de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        escreva(numpcarac(numeros[contadorDiagonal, contadorDiagonal]) + " " )

    fimpara

fimalgoritmo