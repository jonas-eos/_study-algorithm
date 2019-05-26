{*
 * Descrição        De uma quantidade de números informado, informa a média
 *                  total, o maior e o menor número informado
 *
 *
 * @pacote          ALP1/UN.03
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/26/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "mediaMaiorMenor"

var
    numero, maiorNumeroInformado, menorNumeroInformado : inteiro
    quantidadeDeNumeroInformado, somaDosNumeros : inteiro
    
    mediaTotal : real

inicio
    {*------------------------------------------------------------------------*}

    {* Constructor *}
    somaDosNumeros <- 0
    quantidadeDeNumeroInformado <- 0

    {*------------------------------------------------------------------------*}

    {* Entrada *}    
    escreval("Para finalizar informe um número negativo.")
    escreva("Informe um número: ")
    leia(numero)

    {*------------------------------------------------------------------------*}

    {* Processamento / Entrada *}    
    menorNumeroInformado <- numero

    repita

        se (numero < 0) entao

            interrompa

        fimse

        quantidadeDeNumeroInformado <- quantidadeDeNumeroInformado + 1
        somaDosNumeros <- somaDosNumeros + numero

        se (numero > maiorNumeroInformado) entao

            maiorNumeroInformado <- numero

        fimse

        se (numero < menorNumeroInformado) entao
                
                menorNumeroInformado <- numero

        fimse
        
        escreval("Para finalizar informe um número negativo.")
        escreva("Informe um número: ")
        leia(numero)

    ate (falso)

    mediaTotal <- somaDosNumeros / quantidadeDeNumeroInformado

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("Média total dos números: " + numpcarac(mediaTotal))
    escreval("Maior número: " + numpcarac(maiorNumeroInformado))
    escreval("Menor número: " + numpcarac(menorNumeroInformado))

fimalgoritmo