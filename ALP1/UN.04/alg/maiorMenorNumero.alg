{*
 * Descrição        Ler vetor de 50 números inteiros e imprimir o maior e menor
 *                  número informado
 *
 * @pacote          ALP1/UN.04
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/27/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "maiorMenorNumero"

const
    POSICAO_INICIAL = 1
    POSICAO_FINAL = 50


var
    numero : vetor[POSICAO_INICIAL..POSICAO_FINAL] de inteiro
    contador, maiorNumero, menorNumero : inteiro

inicio

    para contador de POSICAO_INICIAL ate POSICAO_FINAL faca
        {*--------------------------------------------------------------------*}
        {* Entrada *}
        escreva("Informe o número: ")
        leia(numero[contador])

        {*--------------------------------------------------------------------*}

        {* Processamento *}
        se (numero[contador] > maiorNumero) entao

            maiorNumero <- numero[contador]

        fimse

        se (contador = POSICAO_INICIAL) entao

            menorNumero <- numero[contador]

        fimse

        se (numero[contador] < menorNumero) entao 
            
            menorNumero <- numero[contador]
        
        fimse
    
    fimpara

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("Maior número: " + numpcarac(maiorNumero))
    escreval("Menor número: " + numpcarac(menorNumero))

fimalgoritmo