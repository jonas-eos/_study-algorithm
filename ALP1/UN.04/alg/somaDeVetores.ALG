{*
 * Descrição            Faz entrada de dados em Tabela A e Tabela B e soma em
 *                      uma nova tabela, em seguida ordena essa tabela C em
 *                      ordem crescente e mostra seus dados
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             V1.0.0
 *----------------------------------------------------------------------------*}
Algoritmo "somaDeVetores"

Const
    POSICAO_MAXIMA = 20
    POSICAO_MINIMA = 1

var

    tabelaA : vetor[POSICAO_MINIMA..POSICAO_MAXIMA] de inteiro
    tabelaB : vetor[POSICAO_MINIMA..POSICAO_MAXIMA] de inteiro
    somaAeB : vetor[POSICAO_MINIMA..POSICAO_MAXIMA] de inteiro

    contador, proximaPosicao, temporario : inteiro

Inicio

    Para contador de POSICAO_MINIMA ate POSICAO_MAXIMA passo 1 faca

        {*--------------------------------------------------------------------*}

        {* Entrada *}
        Escreva ("informe o valor do bloco ")
        Escreva(numpcarac(contador) + " do vetor 1:")
        Leia(tabelaA[contador])

        Escreva ("informe o valor do bloco ")
        Escreva(numpcarac(contador) + " do vetor 2:")
        Leia(tabelaB[contador])

        {*--------------------------------------------------------------------*}

        {* Processamento *}
        somaAeB[contador] <- tabelaA[contador] + tabelaB[contador]

    Fimpara

    Para contador de POSICAO_MINIMA ate POSICAO_MAXIMA - 1 passo 1  faca

        Para proximaPosicao de contador + 1 ate POSICAO_MAXIMA passo 1 faca

            Se (somaAeB[contador] > somaAeB[proximaPosicao]) entao

                temporario <- somaAeB[contador]

                somaAeB[contador] <- somaAeB[proximaPosicao]

                somaAeB[proximaPosicao] <- temporario
                
            Fimse
       Fimpara
    Fimpara
    
    limpatela

    {*------------------------------------------------------------------------*}

    {* Saida *}
    Para contador de POSICAO_MINIMA ate POSICAO_MAXIMA passo 1 faca

        Escreval(numpcarac(somaAeB[contador]))

    Fimpara

Fimalgoritmo


